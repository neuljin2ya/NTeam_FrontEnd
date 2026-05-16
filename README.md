# NTeam Frontend

Flutter + Riverpod 기반 **Feature-first Clean Architecture** 모바일 앱 프로젝트입니다.

---

## Tech Stack

| 영역 | 라이브러리 |
|------|------------|
| 상태 관리 | Riverpod 3.x (`riverpod_annotation`, code generation) |
| 네트워크 | Dio 5.x, `dio_smart_retry`, `dio_cache_interceptor` |
| 라우팅 | GoRouter 17.x |
| UI / 테마 | Material 3, FlexColorScheme, Figma 디자인 토큰 (`lib/config/theme/`) |
| 모델 | Freezed, `json_serializable` |
| 로컬 저장 | `shared_preferences`, `get_storage` |
| 린트 | `flutter_lints`, `lint_rules.yaml`, `riverpod_lint` |

**요구 사항:** Dart SDK `>=3.0.5 <4.0.0`, Flutter 3.x

---

## 시작하기

### 1. 의존성 설치

```bash
flutter pub get
```

FVM을 쓰는 경우:

```bash
fvm flutter pub get
```

### 2. 코드 생성

```bash
make build_runner
# 또는
dart run build_runner build --delete-conflicting-outputs
```

### 3. 실행

```bash
flutter run
```

Flavor는 `lib/flavors/app_flavor.dart` · `lib/main.dart`에서 설정합니다. (`dev` / `staging` / `prod`)

### 4. 분석 · 테스트

```bash
flutter analyze
flutter test
```

---

## 프로젝트 구조

```
NTeam_FrontEnd/
├── AGENTS.md                          # Agent / 개발 규칙 (아키텍처·네이밍·Figma 컬러)
├── scripts/
│   └── create_feature_structure.sh    # feature / data 폴더 스캐폴드
├── lib/
│   ├── main.dart                      # 앱 진입점
│   ├── my_app.dart                    # MaterialApp, 테마, 라우터
│   ├── flavors/                       # dev · staging · prod
│   ├── router/                        # GoRouter, SGRoute
│   ├── config/
│   │   └── theme/                     # Figma 컬러, AppTheme, ThemeUiModel
│   ├── constants/                     # strings, endpoints, assets
│   ├── common/                        # feature 공용 위젯·유틸
│   ├── data/                          # 앱 공용 data 레이어
│   │   ├── datasources/
│   │   ├── models/
│   │   └── repository/
│   └── features/
│       └── {feature_name}/            # snake_case (예: authentication)
│           ├── domain/
│           │   ├── usecase/
│           │   ├── entity/
│           │   └── repository/        # abstract interface
│           ├── data/                    # lib/data 와 동일 구조
│           │   ├── datasources/
│           │   ├── models/
│           │   └── repository/        # 구현체
│           └── presentation/
│               ├── viewmodel/
│               ├── page/
│               └── widget/
└── test/
    └── features/{feature_name}/       # lib 과 동일한 레이어·폴더 구조
```

### 레이어 의존 방향

```
presentation  →  domain  ←  data
```

- **presentation**: `page`, `widget`, Riverpod `viewmodel`
- **domain**: `entity`, `repository`(인터페이스), `usecase` — 프레임워크 비의존
- **data**: `datasources`, `models`, `repository`(구현) — API·로컬 저장

feature 간 `presentation` / `data` 직접 참조는 하지 않습니다. 공유는 `lib/common`, `lib/data`, domain 계약으로 처리합니다.

### 새 Feature 폴더 만들기

```bash
# lib/features/<name> 만
make feature NAME=authentication

# lib/data + feature + test 미러
make feature-all NAME=authentication

# 공용 data 레이어만
make shared-data
```

상세 규칙은 [AGENTS.md](./AGENTS.md)를 참고하세요.

---

## Makefile

| 명령 | 설명 |
|------|------|
| `make build_runner` | Freezed / Riverpod / JSON 코드 생성 |
| `make shared-data` | `lib/data/{datasources,models,repository}` 스캐폴드 |
| `make feature NAME=<name>` | `lib/features/<name>/` 스캐폴드 |
| `make feature-all NAME=<name>` | 공용 data + feature + `test/features/<name>/` |

---

## 커밋 컨벤션

[Conventional Commits](https://www.conventionalcommits.org/) 형식을 사용합니다.

### 형식

```
<type>(<scope>): <subject>

[optional body]

[optional footer]
```

| 필드 | 규칙 |
|------|------|
| `type` | 아래 표에서 하나 (필수) |
| `scope` | feature·모듈명, snake_case 권장 (선택) — `auth`, `theme`, `router` |
| `subject` | **명령형**, 한 줄 요약, 마침표 없음, 50자 내외 권장 |
| `body` | **무엇을 / 왜** 변경했는지 (선택) |
| `footer` | `BREAKING CHANGE:`, `Refs #123` 등 (선택) |

### type

| type | 용도 |
|------|------|
| `feat` | 새 기능 |
| `fix` | 버그 수정 |
| `docs` | 문서만 (`README`, `AGENTS.md` 등) |
| `style` | 포맷·세미콜론 등 (로직 변경 없음) |
| `refactor` | 리팩터링 (기능·버그 수정 아님) |
| `perf` | 성능 개선 |
| `test` | 테스트 추가·수정 |
| `build` | 빌드·CI·의존성 (`pubspec`, Gradle 등) |
| `chore` | 기타 유지보수 (스크립트, `.gitignore`) |
| `revert` | 이전 커밋 되돌리기 |

### 예시

```text
feat(authentication): add login page and view model

fix(router): correct initial route for logged-out users

docs: update project structure in README

refactor(data): extract dio client into shared datasource

chore: add create_feature_structure scaffold script
```

### 권장 사항

- 한 커밋에는 **하나의 논리적 변경**만 담습니다.
- WIP·`fix lint`·`update` 같은 모호한 메시지는 피합니다.
- breaking change가 있으면 footer에 `BREAKING CHANGE: 설명`을 남깁니다.
- PR 제목도 동일한 컨벤션을 따릅니다.

---

## Agent · 개발 가이드

AI Agent(Cursor 등) 및 팀원은 아래 문서를 기준으로 코드를 작성합니다.

| 문서 | 내용 |
|------|------|
| **[AGENTS.md](./AGENTS.md)** | Clean Architecture 폴더 규칙, 의존성, `flutter_lint` 네이밍, Figma 컬러 토큰, feature 체크리스트 |

포함 항목 요약:

- `lib/` · `features/` 폴더별 허용/금지
- 파일·클래스·Riverpod 네이밍
- Figma Variables → `figma_colors.dart` / `app_semantic_colors.dart` 매핑
- `scripts/create_feature_structure.sh` 사용법

---

## 라이선스

[LICENSE](./LICENSE) 파일을 참고하세요.
