# NTeam Frontend — Agent 가이드

Flutter + Riverpod 기반 **Feature-first Clean Architecture** 프로젝트입니다.  
코드 추가·리뷰 시 이 문서의 **폴더 규칙**, **의존성 방향**, **네이밍**을 따릅니다.

---

## 1. 아키텍처 개요

### 1.1 레이어와 의존 방향

```
presentation  →  domain  ←  data
     ↓              ↑
  (UI/상태)    (순수 비즈니스)   (API/DB 구현)
```

| 방향 | 허용 | 금지 |
|------|------|------|
| `presentation` → `domain` | ✅ Use case, Entity, Repository **인터페이스** | — |
| `data` → `domain` | ✅ 인터페이스 구현, DTO → Entity 매핑 | — |
| `domain` → `data` / `presentation` | — | ❌ |
| `data` → `presentation` | — | ❌ |
| Feature A → Feature B `presentation` / `data` | — | ❌ (공유는 `lib/common`, `lib/data`, feature `domain` 계약으로) |
| feature `domain` / `data` → `lib/common/entity` | ✅ 공용 Entity | — |
| feature `data` → `lib/common/data` | ✅ 공용 DTO·Mapper·Provider | feature `domain`에 DTO 직접 노출 금지 |

- **domain**: Flutter/Dio/Riverpod 등 프레임워크에 의존하지 않는 순수 Dart.
- **data**: 원격·로컬 소스, DTO, Repository **구현체**.
- **presentation**: `page`, `widget`, Riverpod **viewmodel**.

### 1.2 디렉터리 트리

```
lib/
├── main.dart                 # 진입점, bootstrap
├── my_app.dart               # MaterialApp / ProviderScope 루트
├── flavors/                  # dev / staging / prod
├── router/                   # GoRouter, 라우트 enum
├── config/                   # 앱 전역 설정 (테마·Figma 컬러 등)
│   └── theme/
│       ├── figma_colors.dart           # Figma primitive 변수 (HEX)
│       ├── app_semantic_colors.dart    # Figma semantic 변수 (조합)
│       ├── app_text_styles.dart        # SUIT 타이포그래피 토큰
│       └── app_theme.dart              # ThemeData (Material 연결)
├── constants/                # 문자열, API 경로, 에셋 경로
├── common/                   # feature 무관 공용 (UI·네트워크 계약)
│   ├── entity/               # 공용 Entity (freezed, fromJson 없음)
│   ├── data/                 # 공용 DTO·Mapper·Provider (§2.6)
│   └── *.dart                # 공용 위젯·유틸
├── data/                     # 앱 공용 data (네이버 맵 등)
│   ├── datasources/
│   ├── models/
│   └── repository/
└── features/
    └── {feature_name}/       # snake_case (authentication, home)
        ├── domain/
        │   ├── usecase/
        │   ├── entity/
        │   └── repository/   # abstract interface
        ├── data/             # lib/data 와 동일 하위 구조
        │   ├── datasources/
        │   ├── models/
        │   └── repository/   # 구현체
        └── presentation/
            ├── viewmodel/
            ├── page/
            └── widget/
```

`test/features/{feature_name}/` 도 **동일한** `domain` · `data` · `presentation` 하위 폴더를 둡니다.

폴더 생성: `./scripts/create_feature_structure.sh <feature_name>` 또는 `make feature NAME=<feature_name>` (§4 참고).

---

## 2. 폴더별 상세 규칙

### 2.1 `lib/` 루트

| 파일/폴더 | 들어가야 할 것 | 들어가면 안 되는 것 |
|-----------|----------------|---------------------|
| `main.dart` | `WidgetsFlutterBinding`, flavor 설정, `runApp` | 비즈니스 로직, API 호출 |
| `my_app.dart` | `MaterialApp`, 테마, `routerConfig`, locale | feature별 화면 구현 |

### 2.2 `lib/flavors/`

| 허용 | 금지 |
|------|------|
| `AppFlavor` enum, `FlavorConfig` (앱 이름, bundle id, base URL 등) | Dio 인스턴스, Hive, feature 코드 |

**파일 예:** `app_flavor.dart`

### 2.3 `lib/router/`

| 허용 | 금지 |
|------|------|
| `GoRouter` provider, `SGRoute` 등 라우트 enum, redirect/guard | API 호출, Repository, 복잡한 폼 상태 |
| 화면 위젯은 **import만** 하고 라우트에 연결 | data layer 직접 참조 |

**파일 예:** `app_router.dart`, `app_router.g.dart` (생성)

### 2.4 `lib/config/`

| 허용 | 금지 |
|------|------|
| 테마, **Figma 컬러 토큰**, 로케일, 앱 전역 UI 설정 모델 | feature별 화면·Use case |
| `FigmaColors`, `AppSemanticColors`, `AppTextStyles`, `AppTheme` | 네트워크 레이어 |
| `ThemeUiModel` + freezed/json | 위젯 안 `Color(0xFF...)` · `TextStyle(fontFamily: …)` 하드코딩 |

**파일 예:** `config/theme/figma_colors.dart`, `app_semantic_colors.dart`, `app_text_styles.dart`, `app_theme.dart`, `theme_ui_model.dart`

Figma 컬러·타이포·테마 상세는 **§7 Figma 컬러 · 타이포그래피 & 테마** 참고.

### 2.5 `lib/constants/`

| 허용 | 금지 |
|------|------|
| `Strings`, `Endpoints`, `Assets` 등 **상수만** 모은 클래스 | 상태, async, Riverpod |
| `static const` / `static final` | 위젯, BuildContext |

**파일 예:** `strings.dart`, `endpoints.dart`, `assets.dart`  
**클래스:** private 생성자 + static 멤버 (`Strings._();`)

### 2.6 `lib/common/`

2개 이상 feature·dev 모듈에서 쓰는 코드를 둡니다. **네트워크 스택은 Freezed + Riverpod + Retrofit** 으로 통일합니다 (§2.6.1).

#### 루트 (`lib/common/*.dart`)

| 허용 | 금지 |
|------|------|
| 재사용 **위젯**, extension, mixin, 작은 helper | 특정 feature만 쓰는 화면·비즈니스 규칙 |
| 공용 실패 UI, 로딩, 버튼 스타일 | API DTO, Retrofit 인터페이스 |

**파일 예:** `app_button.dart`, `tag.dart`, `difficulty_tag.dart`

#### `lib/common/entity/` — 공용 Entity

| 허용 | 금지 |
|------|------|
| **freezed** Value object·Envelope (`ApiResponse<T>`) | `fromJson` / `json_serializable` |
| feature·dev `domain`에서 import | Dio, Retrofit, Riverpod |

**파일 예:** `entity/api_response.dart` → `api_response.freezed.dart`

#### `lib/common/data/` — 공용 DTO·인프라

| 하위 | 허용 | 금지 |
|------|------|------|
| `models/` | **freezed** + **json_serializable** DTO (`ApiResponseModel<T>`) | feature Entity |
| `mappers/` | DTO ↔ `lib/common/entity` 변환 | UI |
| `providers/` | **Riverpod** `@riverpod` (`apiResponseDecoder` 등) | feature Use case |

**파일 예:** `data/models/api_response_model.dart`, `data/mappers/api_response_mapper.dart`

#### 2.6.1 API 모듈 작성 규칙 (Freezed · Riverpod · Retrofit)

feature 전용·`lib/dev/{모듈}/` API는 아래 **동일한 레이어**를 따릅니다.

```
{module}/
├── domain/
│   ├── entity/           # 비즈니스 Entity (freezed)
│   ├── repository/       # abstract Repository
│   └── usecase/
└── data/
    ├── datasources/
    │   ├── *_rest_api.dart    # @RestApi (Retrofit) — @Query 파라미터 개별 선언
    │   └── remote_*_ds.dart   # Retrofit 호출·DioException 처리
    ├── models/                # API 전용 DTO (freezed + json) 또는 envelope 래퍼
    ├── mappers/               # Model → domain entity
    ├── repository/            # *RepositoryImpl
    └── providers/             # Dio, RestApi, DataSource, Repository, UseCase
```

| 레이어 | 도구 | 역할 |
|--------|------|------|
| Entity | **Freezed** | `lib/common/entity` 또는 feature `domain/entity` |
| DTO | **Freezed** + `json_serializable` | `lib/common/data/models` 또는 feature `data/models` |
| REST | **Retrofit** (`@RestApi`, `@GET`, `@Query`) | `*_rest_api.dart` + `*.g.dart` |
| DI | **Riverpod** (`riverpod_annotation`) | `providers/*.dart` + `*.g.dart` |
| 응답 envelope | `ApiResponse` / `ApiResponseModel` | `code`, `message`, `data` 공통 형식 |

**Retrofit 쿼리:** `@Queries() Map` 대신 **`@Query('name')` 파라미터를 메서드에 직접** 선언합니다. `null`은 생성 코드에서 쿼리에서 제외됩니다.

**Retrofit 응답:** 엔드포인트별 `*ResponseModel`(freezed `fromJson`) 또는 `Map` 파싱 후 `ApiResponseDecoder` 사용.

**Repository:** DataSource DTO → Mapper → domain Entity, 반환 타입은 `ApiResponse<T>` 등 **common entity** 우선.

**코드 생성:** `make build_runner` — `*.freezed.dart`, `*.g.dart`(json·retrofit·riverpod) 직접 수정 금지.

**예 (dev 스팟):** `lib/dev/spot/` — `SpotRestApi`, `RemoteSpotDataSource`, `SpotRepositoryImpl`, `getSpotsUseCaseProvider`

### 2.7 `lib/data/` (공용 data)

여러 feature가 **동일한** API·모델·소스를 쓸 때만 사용합니다.  
feature 전용은 `features/{name}/data/` 에 두며, **하위 폴더 이름·역할은 `lib/data` 와 동일**합니다.

| 하위 폴더 | 허용 | 금지 |
|-----------|------|------|
| `datasources/` | 공용 `RemoteXxxDataSource`, Dio client 래퍼 | UI, Riverpod viewmodel |
| `models/` | 공용 DTO, freezed + `json_serializable` | Entity (domain) |
| `repository/` | 공용 Repository **구현체**, data provider | feature Use case |

초기 생성: `./scripts/create_feature_structure.sh --shared-data` 또는 `make shared-data`

### 2.8 `lib/features/{feature_name}/`

feature 이름은 **snake_case**, 기능 단위로 분리합니다.  
(`authentication`, `home`, `profile` — `auth`, `Auth` 폴더명 금지)

스캐폴드: `./scripts/create_feature_structure.sh <feature_name>` · `make feature NAME=<feature_name>`

#### `domain/` — `usecase` · `entity` · `repository`

| 하위 | 허용 | 금지 |
|------|------|------|
| `entity/` | 순수 Entity, Value object | API DTO (`*_model.dart`), `fromJson` |
| `repository/` | `abstract class XxxRepository` | 구현체, Dio, `SharedPreferences` |
| `usecase/` | 단일 책임 Use case (`LoginUseCase`) | Widget, `Ref`, `BuildContext` |

**의존성:** `dart:` SDK만 (가급적). 다른 feature **domain** 직접 참조는 피함.

#### `data/` — `datasources` · `models` · `repository` (공용 `lib/data` 와 동일)

| 하위 | 허용 | 금지 |
|------|------|------|
| `datasources/` | `RemoteXxxDataSource`, `LocalXxxDataSource` | Widget, viewmodel |
| `models/` | API JSON용 DTO (`UserModel`) | GoRouter, page |
| `repository/` | `XxxRepositoryImpl implements XxxRepository` | presentation import |

**의존성:** `domain` + Dio/get_storage 등. **domain `repository` 인터페이스 구현**.

#### `presentation/` — `viewmodel` · `page` · `widget`

| 하위 | 허용 | 금지 |
|------|------|------|
| `page/` | `XxxPage`, `Scaffold`·라우트 단위 화면 조립 | Dio 직접 호출 |
| `widget/` | 해당 feature 전용 위젯·dialog | 다른 feature `data/` import |
| `viewmodel/` | `@riverpod` Notifier/Controller, UI state 모델 | domain `*Impl`, data `datasources` 직접 호출 |

**의존성:** `domain` (Use case · Repository **인터페이스**), Flutter, Riverpod.

---

## 3. 파일·클래스 네이밍 (Effective Dart + flutter_lint)

프로젝트는 `lint_rules.yaml` + `analysis_options.yaml` 을 사용합니다.  
아래는 **활성 규칙과 맞춘** 실무 규칙입니다.

### 3.1 파일명 (`file_names`)

- **규칙:** `lower_case_with_underscores` 만 사용.
- **확장자:** `.dart` (생성 파일: `.freezed.dart`, `.g.dart`).

| 종류 | 패턴 | 예 |
|------|------|-----|
| Page | `{기능}_page.dart` | `login_page.dart` |
| Widget | `{설명}_widget.dart` | `social_tile_widget.dart` |
| ViewModel | `{기능}_view_model.dart` | `login_view_model.dart` |
| ViewModel (생성) | `part '{기능}_view_model.g.dart'` | Riverpod `@riverpod` |
| UI 상태 (viewmodel 폴더) | `{기능}_ui_model.dart` | `login_ui_model.dart` |
| Domain 엔티티 | `{이름}.dart` 또는 `{이름}_entity.dart` | `user.dart` |
| DTO (data) | `{이름}_model.dart` | `user_model.dart` |
| Repository 인터페이스 | `{이름}_repository.dart` | `authentication_repository.dart` |
| Repository 구현 | `{이름}_repository.dart` (data/) 또는 `*_repository_impl.dart` | data 쪽 구현 |
| Use case | `usecase/{동사}_{명사}.dart` | `login_use_case.dart` |
| Entity | `entity/{이름}.dart` | `user.dart` |
| Data source | `datasources/{remote\|local}_{이름}_ds.dart` | `remote_auth_ds.dart` |
| Provider / Router | `{이름}_router.dart`, 생성 `*.g.dart` | `app_router.dart` |
| 테스트 | `test/features/.../{대상}_test.dart` | `login_view_model_test.dart` |

**금지 예:** `LoginScreen.dart`, `login-screen.dart`, `LOGIN.dart`

### 3.2 라이브러리·import (`library_names`, `directives_ordering`)

1. `dart:` SDK  
2. `package:` 외부 패키지  
3. `package:flutter_riverpod_template/...` (본 패키지 — `pubspec.yaml`의 `name` 기준)  
4. 상대 import (`prefer_relative_imports` — 동일 feature 내부)

- `implementation_imports` 금지: 다른 패키지의 `src/` 직접 import 하지 않음.
- `avoid_relative_lib_imports`: `lib/` 밖에서 `../lib/...` 형태 금지.

### 3.3 타입명 (`camel_case_types`)

- **클래스·enum·typedef:** `UpperCamelCase`
- **타입 파라미터:** 단일 대문자 `T`, `E` 또는 의미 있는 `TUser`

| 종류 | 규칙 | 예 |
|------|------|-----|
| Entity | 명사 | `User`, `LoginRequest` |
| DTO | `Model` 접미사 | `UserModel` |
| UI 모델 | `UiModel` 접미사 | `ThemeUiModel`, `AuthUiModel` |
| Repository | `Repository` | `AuthenticationRepository` |
| Use case | `UseCase` 또는 동사구 클래스 | `CacheUser`, `GetCachedUser` |
| Page | `Page` | `LoginPage` |
| Widget | 기능 설명 + `Widget` (선택) | `LanguageTileWidget` |
| ViewModel | `ViewModel` 또는 Riverpod 클래스명 | `LoginViewModel` |
| Riverpod | `@riverpod` 함수는 동사, provider 이름 자동 생성 | `goRouter`, `loginViewModel` |
| Route enum | 프로젝트 접두사 통일 | `SGRoute` |

**Freezed:** 클래스명 `ThemeUiModel`, private 생성자 factory 패턴 유지.

```dart
@freezed
abstract class ThemeUiModel with _$ThemeUiModel {
  const factory ThemeUiModel({@Default(ThemeMode.system) ThemeMode themeMode}) =
      _ThemeUiModel;
}
```

### 3.4 변수·함수·파라미터 (`non_constant_identifier_names`)

| 대상 | 규칙 | 예 |
|------|------|-----|
| 지역 변수·필드·파라미터 | `lowerCamelCase` | `userName`, `isLoading` |
| private 멤버 | `_` 접두사 | `_repository`, `_flavor` |
| bool | `is`, `has`, `can` 접두사 | `isLoggedIn`, `hasError` |
| 함수·메서드 | 동사로 시작 | `fetchUser()`, `setFlavor()` |
| 콜백 파라미터 | `on` + 이벤트 | `onPressed`, `onLoginSuccess` |

**로컬:** `no_leading_underscores_for_local_identifiers` — 지역 변수에 `_name` 사용 금지 (private 필드만 `_`).

### 3.5 상수 (`constant_identifier_names`, `prefer_const_declarations`)

- Dart 스타일: **lowerCamelCase** (`appName`, `localizationsPath`).
- `static const` / top-level `const` 에 `prefer_const_constructors`, `prefer_const_literals_to_create_immutables` 적용.
- 클래스 상수 모음: `class Strings { Strings._(); static const String appName = '...'; }`

```dart
class Strings {
  Strings._();
  static const String appName = 'template';
}
```

- enum 값: `lowerCamelCase` (`dev`, `forgotPassword`) — `SGRoute.forgotPassword`.

### 3.6 기타 lint와 맞는 습관

| 규칙 | 적용 |
|------|------|
| `always_declare_return_types` | public 함수·메서드에 반환 타입 명시 |
| `always_specify_types` / `type_annotate_public_apis` | public API·복잡한 컬렉션에 타입 명시 |
| `prefer_final_locals` / `prefer_final_fields` | 재할당 없으면 `final` |
| `prefer_single_quotes` | 문자열은 `'...'` (이스케이프 필요 시만 `"`) |
| `sort_constructors_first` | 생성자를 멤버 위쪽 |
| `use_super_parameters` | `super.key` 등 super 파라미터 문법 사용 |
| `annotate_overrides` | `@override` 필수 |
| `avoid_print` | `debugPrint` 또는 `logger` |
| `use_key_in_widget_constructors` | Stateful/Stateless public 위젯에 `Key? key` |
| `unawaited_futures` | 의도적 fire-and-forget은 `unawaited()` |
| `use_build_context_synchronously` | async gap 이후 `context` 사용 시 `mounted` 체크 |

### 3.7 코드 생성 파일

- 직접 수정 금지: `*.g.dart`, `*.freezed.dart`
- 소스 파일명과 prefix 일치: `theme_ui_model.dart` → `part 'theme_ui_model.freezed.dart';`
- analyzer `exclude`에 이미 포함됨 — lint는 소스 파일에만 적용.

### 3.8 Riverpod / GoRouter 네이밍

```dart
// router — enum + provider
enum SGRoute { home, login; ... }

@riverpod
GoRouter goRouter(Ref ref) => GoRouter(...);

// presentation/viewmodel — view model
@riverpod
class LoginViewModel extends _$LoginViewModel { ... }
```

- ViewModel 파일: `presentation/viewmodel/login_view_model.dart` + `part 'login_view_model.g.dart';`
- Page: `presentation/page/login_page.dart`
- `Ref` / `WidgetRef` 파라미터 이름: `ref` (관례).

---

## 7. Figma 컬러 · 타이포그래피 & 테마

UI 색·글꼴은 **Figma Variables / Text Styles** 와 맞춥니다.  
디자인이 바뀌면 `lib/config/theme/` · `pubspec.yaml` `fonts:` 만 수정하고, feature·위젯은 `AppSemanticColors` · `AppTextStyles` · `Theme.of(context).textTheme` 만 참조합니다.

### 7.1 파일 역할

| 파일 | Figma / 에셋 대응 | 내용 |
|------|-------------------|------|
| `figma_colors.dart` | Primitive collections (`Brand`, `Neutral`, `Status`, …) | HEX `Color` 상수. Figma에 없는 색 추가 금지 |
| `app_semantic_colors.dart` | Semantic collections (`Text`, `Background`, `Border`, …) | `FigmaColors` 조합만. 라이트/다크는 `AppSemanticColors` / `AppSemanticColorsDark` |
| `app_text_styles.dart` | Text styles (SUIT) | `TextStyle` 상수·`textTheme()` · 색 헬퍼 (`withPrimaryColor` 등) |
| `app_theme.dart` | — | `ThemeData` · `fontFamily` · `textTheme` · Material 컴포넌트 테마 |
| `theme_ui_model.dart` | — | `ThemeMode` 등 런타임 UI 상태 (freezed) |
| `pubspec.yaml` `flutter.fonts` | `assets/fonts/SUIT-*.ttf` | `family: SUIT`, weight 100~900 |

### 7.2 타이포그래피 (SUIT)

폰트 파일은 `assets/fonts/` 에 두고 `pubspec.yaml` 에 등록합니다. 코드에서는 **`AppTextStyles`** 만 사용합니다 (`fontFamily: 'SUIT'` 인라인 금지).

| `AppTextStyles` | 크기 / 굵기 | 용도 예 |
|-----------------|-------------|---------|
| `headlineLarge` | 20 / w700 | 모달 제목 |
| `headlineMedium` | 18 / w700 | 강조 섹션 |
| `titleLarge` | 18 / w700 | 앱바·카드 제목 |
| `bodyLarge` | 16 / w400 | 본문·입력 필드 |
| `bodyMedium` | 14 / w400 | 설명·옵션 카드 |
| `bodySmall` | 14 / w400 (h 1.43) | 모달 본문 |
| `labelLarge` | 16 / w700 | 탭·폴드 헤더 |
| `labelMedium` | 14 / w700 | 태그·탭 버튼 |
| `labelSmall` | 10 / w400 | 난이도·보조 캡션 |
| `buttonLarge` / `buttonMedium` / `buttonSmall` | 24·20·16 / w700 | [AppButton] 크기별 |

- 색이 필요하면 `AppTextStyles.withPrimaryColor(style)` 등 또는 `style.copyWith(color: …)`.
- `ThemeData` 연동: `AppTheme` → `textTheme: AppTextStyles.textTheme()`.
- 화면에서는 가능하면 `Theme.of(context).textTheme.bodyLarge` 등 Material 슬롯 사용.

```dart
import 'package:parkou_route/config/theme/app_text_styles.dart';

Text('제목', style: AppTextStyles.titleLarge.copyWith(color: AppSemanticColors.textPrimary));
```

### 7.3 Figma 이름 → Dart 이름 규칙

Figma Variables 패널에 보이는 **전체 경로**를 주석으로 남기고, Dart 식별자는 아래 규칙으로 변환합니다.

| Figma (Variables) | Dart 멤버 (`figma_colors.dart`) | 예시 접근 |
|-------------------|----------------------------------|-----------|
| `Brand/Primary` | `brandPrimary` | `FigmaColors.brandPrimary` |
| `Neutral/100` | `neutral100` | `FigmaColors.neutral100` |
| `Status/Error` | `statusError` | `FigmaColors.statusError` |
| `Text/Primary` | `textPrimary` (`app_semantic_colors.dart`) | `AppSemanticColors.textPrimary` |
| `Background/Page` | `backgroundPage` | `AppSemanticColors.backgroundPage` |

**변환 규칙**

1. 슬래시(`/`) 제거 후 **lowerCamelCase** 한 덩어리로 합침: `Brand/Primary` → `brandPrimary`
2. 숫자 스텝은 유지: `Neutral/100` → `neutral100`
3. 공백은 제거: `Brand/On Primary` → `brandOnPrimary`, `Text/On Brand` → `textOnBrand`
4. **주석**은 Figma 원문 그대로: `/// Figma: \`Brand/Primary\``
5. Figma collection 이름이 바뀌면 Dart 파일의 **섹션 주석**과 멤버를 함께 갱신

### 7.4 코드 작성 규칙

| ✅ 해야 함 | ❌ 하면 안 됨 |
|------------|----------------|
| Figma Inspect / Variables에서 HEX 복사 후 `figma_colors.dart` 반영 | 위젯·Screen에 `Color(0xFF...)` 직접 작성 |
| 화면·공용 위젯은 `AppSemanticColors.*` 우선 사용 | `Colors.blue`, `ColorScheme.primary`만으로 임의 색 지정 |
| 텍스트는 `AppTextStyles.*` 또는 `Theme.of(context).textTheme` | `TextStyle(fontFamily: 'SUIT', fontSize: …)` 인라인 정의 |
| Material 연동은 `AppTheme.light()` / `dark()` | `FlexScheme` 등 외부 팔레트에 디자인 토큰 중복 정의 |
| 다크 모드 시맨틱은 `AppSemanticColorsDark` | 라이트 HEX를 다크에서 그대로 재사용 (Figma dark 토큰 없을 때만 예외·주석 필수) |
| 불투명도는 Figma `Alpha/*` 토큰 사용 | `withOpacity` 매직 넘버 (Figma에 토큰이 있으면 그 값 사용) |
| `letterSpacing` 등 예외는 기존 스타일 `copyWith`만 | 공용 위젯마다 타이포 수치 중복 |

**위젯 예시**

```dart
import 'package:parkou_route/config/theme/app_semantic_colors.dart';
import 'package:parkou_route/config/theme/app_text_styles.dart';

Text(
  '제목',
  style: AppTextStyles.withPrimaryColor(AppTextStyles.titleLarge),
);

Container(color: AppSemanticColors.backgroundSurface);
```

### 7.5 Figma · 폰트 갱신 워크플로

1. Figma Variables / Styles 패널에서 추가·변경·삭제 확인  
2. `figma_colors.dart` primitive 동기화 (이름·HEX)  
3. `app_semantic_colors.dart` 매핑 조정 (시맨틱이 primitive 참조하는 경우)  
4. 텍스트 스타일 변경 시 `app_text_styles.dart` · 필요 시 `assets/fonts/` · `pubspec.yaml` `fonts:` 갱신  
5. `app_theme.dart`에서 `ColorScheme`·`textTheme`·컴포넌트 테마 필요 시 수정  
6. `flutter analyze` — `use_full_hex_values_for_flutter_colors` 준수 (`0xFF` 8자리)

`my_app.dart`에서 Figma 테마 적용:

```dart
theme: AppTheme.light(),
darkTheme: AppTheme.dark(),
```

(현재는 `FlexThemeData` 템플릿이 남아 있을 수 있음. Figma 토큰 확정 후 위로 교체.)

### 7.6 Agent · 리뷰 체크

- [ ] 새 색이 Figma Variables에 존재하는가?  
- [ ] `/// Figma: \`...\`` 주석이 패널 이름과 일치하는가?  
- [ ] primitive / semantic 분리가 지켜졌는가?  
- [ ] feature `presentation`에 raw HEX가 없는가?
- [ ] 텍스트가 `AppTextStyles` / `textTheme`를 쓰는가? (`fontFamily: 'SUIT'` 인라인 없음)
- [ ] 새 weight 추가 시 `pubspec.yaml` `fonts:` 와 `assets/fonts/`가 함께 갱신되었는가?

---

## 4. 새 Feature 추가 체크리스트

### 4.1 폴더 스캐폴드 (스크립트)

`scripts/create_feature_structure.sh` 가 레이어별 폴더와 `.gitkeep` 을 만듭니다.

| 명령 | 생성 경로 |
|------|-----------|
| `make shared-data` | `lib/data/{datasources,models,repository}/` |
| `make feature NAME=authentication` | `lib/features/authentication/...` |
| `make feature-all NAME=authentication` | 공용 `lib/data` + feature + `test/features/...` |
| `./scripts/create_feature_structure.sh authentication` | feature (lib 만) |
| `./scripts/create_feature_structure.sh --all authentication` | shared + feature + test |

**feature 하위 (lib · test 동일)**

| 레이어 | 폴더 |
|--------|------|
| `domain` | `usecase/`, `entity/`, `repository/` |
| `data` | `datasources/`, `models/`, `repository/` |
| `presentation` | `viewmodel/`, `page/`, `widget/` |

### 4.2 구현 순서

1. 스크립트로 폴더 생성 (§4.1)  
2. `domain/entity` · `domain/repository`(abstract) · `domain/usecase`  
3. `data/models` · `data/datasources` · `data/repository`(impl)  
4. `presentation/viewmodel` · `page` · `widget`  
5. `lib/router/app_router.dart` — `SGRoute` · `GoRoute`  
6. `test/features/{feature_name}/presentation/viewmodel/...` 테스트  
7. `make build_runner`

---

## 5. 명령어

```bash
make shared-data                          # lib/data 스캐폴드
make feature NAME=authentication          # lib/features/<name> 스캐폴드
make feature-all NAME=authentication      # lib/data + feature + test
make build_runner                         # code gen
flutter analyze
flutter test
```

---

## 6. Agent 작업 시 주의

- 요청 범위 밖 리팩터링·대량 삭제 금지.
- feature 간 **presentation/data 직접 결합** 금지.
- 새 코드는 기존 파일의 import 스타일·Freezed·Riverpod 패턴을 따름.
- 커밋은 사용자가 요청할 때만 수행.
