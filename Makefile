build_runner:
	fvm flutter pub run build_runner build --delete-conflicting-outputs

# Usage: make feature NAME=authentication
feature:
	@test -n "$(NAME)" || (echo "Usage: make feature NAME=<feature_name>" && exit 1)
	@./scripts/create_feature_structure.sh $(NAME)

feature-all:
	@test -n "$(NAME)" || (echo "Usage: make feature-all NAME=<feature_name>" && exit 1)
	@./scripts/create_feature_structure.sh --all $(NAME)

shared-data:
	@./scripts/create_feature_structure.sh --shared-data