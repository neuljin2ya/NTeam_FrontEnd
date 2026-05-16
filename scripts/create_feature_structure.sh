#!/usr/bin/env bash
# Feature / 공용 data 레이어 폴더와 .gitkeep 생성
#
# 사용법:
#   ./scripts/create_feature_structure.sh <feature_name>   # lib/features/<name>/...
#   ./scripts/create_feature_structure.sh --shared-data    # lib/data/... 만
#   ./scripts/create_feature_structure.sh --all <name>     # shared data + feature
#
# 예:
#   ./scripts/create_feature_structure.sh authentication
#   make feature NAME=authentication

set -euo pipefail

readonly ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
readonly LIB_DIR="${ROOT_DIR}/lib"
readonly TEST_DIR="${ROOT_DIR}/test"

readonly DATA_SUBDIRS=(
  datasources
  models
  repository
)

readonly DOMAIN_SUBDIRS=(
  usecase
  entity
  repository
)

readonly PRESENTATION_SUBDIRS=(
  viewmodel
  page
  widget
)

usage() {
  cat <<'EOF'
Usage:
  create_feature_structure.sh <feature_name>     Create lib/features/<name>/...
  create_feature_structure.sh --shared-data      Create lib/data/...
  create_feature_structure.sh --all <feature_name>
  create_feature_structure.sh --help

Options:
  --with-test    Also create test/features/<name>/...
  --no-test      Skip test/ mirror (default)
EOF
}

touch_gitkeep() {
  local dir="$1"
  mkdir -p "${dir}"
  touch "${dir}/.gitkeep"
  echo "  ${dir}/.gitkeep"
}

create_data_layer() {
  local base="$1"
  echo "data (${base}):"
  local subdir
  for subdir in "${DATA_SUBDIRS[@]}"; do
    touch_gitkeep "${base}/data/${subdir}"
  done
}

create_domain_layer() {
  local base="$1"
  echo "domain (${base}):"
  local subdir
  for subdir in "${DOMAIN_SUBDIRS[@]}"; do
    touch_gitkeep "${base}/domain/${subdir}"
  done
}

create_presentation_layer() {
  local base="$1"
  echo "presentation (${base}):"
  local subdir
  for subdir in "${PRESENTATION_SUBDIRS[@]}"; do
    touch_gitkeep "${base}/presentation/${subdir}"
  done
}

create_shared_data() {
  echo ">> lib/data (공용)"
  create_data_layer "${LIB_DIR}"
}

create_feature() {
  local feature_name="$1"
  local with_test="${2:-false}"

  if [[ -z "${feature_name}" ]]; then
    echo "error: feature_name required" >&2
    usage
    exit 1
  fi

  if [[ ! "${feature_name}" =~ ^[a-z][a-z0-9_]*$ ]]; then
    echo "error: feature_name must be snake_case (e.g. authentication)" >&2
    exit 1
  fi

  local feature_lib="${LIB_DIR}/features/${feature_name}"
  echo ">> ${feature_lib}"
  create_domain_layer "${feature_lib}"
  create_data_layer "${feature_lib}"
  create_presentation_layer "${feature_lib}"

  if [[ "${with_test}" == "true" ]]; then
    local feature_test="${TEST_DIR}/features/${feature_name}"
    echo ">> ${feature_test}"
    create_domain_layer "${feature_test}"
    create_data_layer "${feature_test}"
    create_presentation_layer "${feature_test}"
  fi
}

main() {
  local with_test="false"
  local mode="feature"
  local feature_name=""

  while [[ $# -gt 0 ]]; do
    case "$1" in
      --help | -h)
        usage
        exit 0
        ;;
      --shared-data)
        mode="shared"
        shift
        ;;
      --all)
        mode="all"
        shift
        feature_name="${1:-}"
        shift || true
        ;;
      --with-test)
        with_test="true"
        shift
        ;;
      --no-test)
        with_test="false"
        shift
        ;;
      --*)
        echo "error: unknown option $1" >&2
        usage
        exit 1
        ;;
      *)
        feature_name="$1"
        shift
        ;;
    esac
  done

  case "${mode}" in
    shared)
      create_shared_data
      ;;
    all)
      create_shared_data
      echo ""
      create_feature "${feature_name}" "${with_test}"
      ;;
    feature)
      create_feature "${feature_name}" "${with_test}"
      ;;
  esac

  echo ""
  echo "Done."
}

main "$@"
