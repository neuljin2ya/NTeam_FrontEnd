# Common Components Usage

`lib/common/`에 있는 공용 컴포넌트 사용 예시입니다.

공통으로 필요한 import:

```text
import 'package:parkou_route/common/app_button.dart';
import 'package:parkou_route/common/app_input_field.dart';
import 'package:parkou_route/common/app_modal.dart';
import 'package:parkou_route/common/app_top_bar.dart';
import 'package:parkou_route/common/condition_option_card.dart';
import 'package:parkou_route/common/obstacle_option_card.dart';
import 'package:parkou_route/common/status_action_button.dart';
import 'package:parkou_route/common/tab_button.dart';
import 'package:parkou_route/common/tab_fold_button.dart';
import 'package:parkou_route/common/tab_underline_button.dart';
import 'package:parkou_route/common/tag.dart';
import 'package:parkou_route/config/theme/figma_colors.dart';
```

## AppButton

```text
AppButton(
  text: '시작하기',
  onPressed: () {},
)

AppButton(
  text: '로그인',
  style: AppButtonStyle.gray,
  size: AppButtonSize.medium,
  onPressed: () {},
)

AppButton(
  text: '완료',
  width: 120,
  style: AppButtonStyle.primary,
  size: AppButtonSize.small,
  onPressed: () {},
)
```

## AppInputField

```text
final TextEditingController controller = TextEditingController();

AppInputField(
  controller: controller,
  hintText: 'Input Field',
  onChanged: (String value) {},
)

const AppInputField(
  hintText: 'Input Field',
  state: AppInputFieldState.focused,
)

const AppInputField(
  hintText: 'Input Field',
  state: AppInputFieldState.disabled,
)

const AppInputField(
  hintText: 'Input Field',
  state: AppInputFieldState.error,
)

const AppInputField(
  hintText: '비밀번호',
  obscureText: true,
  svgIcon: 'assets/icons/app_input_field_icon.svg',
)
```

## TabButton

```text
const TabButton(text: 'Online')

const TabButton.selected(text: 'Online')

const TabButton.disabled(text: 'Online')

TabButton(
  text: 'Offline',
  backgroundColor: FigmaColors.gray300,
  borderColor: FigmaColors.primary100,
  textColor: FigmaColors.white,
  onPressed: () {},
)
```

## TabUnderlineButton

```text
const TabUnderlineButton(text: 'Tab')

const TabUnderlineButton.selected(text: 'Tab')

const TabUnderlineButton.disabled(text: 'Tab')

TabUnderlineButton(
  text: 'Team',
  underlineColor: FigmaColors.primary100,
  underlineWidth: 3,
  onPressed: () {},
)
```

## TabFoldButton

```text
TabFoldButton(
  text: '추천',
  isExpanded: false,
  onPressed: () {},
)

TabFoldButton(
  text: '추천',
  isExpanded: true,
  onPressed: () {},
)

TabFoldButton(
  text: '추천',
  showLeading: true,
  isExpanded: false,
)

TabFoldButton(
  text: '추천',
  leading: Icon(
    Icons.error_outline,
    color: FigmaColors.white,
    size: 24,
  ),
  iconColor: FigmaColors.gray100,
)
```

## Tag

```text
const Tag(
  text: 'Tag',
)

const Tag(
  text: 'Tag',
  width: 120,
  height: 36,
)

Tag(
  text: 'Custom',
  backgroundColor: FigmaColors.gray600,
  borderColor: FigmaColors.gray300,
  textColor: FigmaColors.white,
  borderRadius: 8,
)
```

## StatusActionButton

```text
StatusActionButton(
  text: '상태 남기기',
  onPressed: () {},
)

StatusActionButton(
  text: '상태 남기기',
  color: FigmaColors.primary300,
  icon: Icons.add,
  onPressed: () {},
)

const StatusActionButton.disabled(
  text: '상태 남기기',
)

StatusActionButton(
  text: '상태 남기기',
  color: FigmaColors.gray100,
  iconWidget: Icon(
    Icons.add,
    color: FigmaColors.gray100,
    size: 16,
  ),
)
```

## ObstacleOptionCard

```text
ObstacleOptionCard(
  text: '계단',
  svgIcon: 'assets/icons/btn_icon_stair.svg',
  onPressed: () {},
)

ObstacleOptionCard.selected(
  text: '계단',
  svgIcon: 'assets/icons/btn_icon_stair.svg',
  onPressed: () {},
)

ObstacleOptionCard(
  text: '낮은 벽',
  svgIcon: 'assets/icons/btn_icon_short.svg',
  backgroundColor: FigmaColors.gray300,
  textColor: FigmaColors.white,
  iconColor: FigmaColors.white,
)

ObstacleOptionCard(
  text: '난간·바',
  svgIcon: 'assets/icons/btn_icon_bar.svg',
)

ObstacleOptionCard(
  text: '벤치·테이블',
  svgIcon: 'assets/icons/btn_icon_bench.svg',
)
```

## ConditionOptionCard

```text
ConditionOptionCard(
  title: '쾌적함',
  description: '사람 적고 상태 양호',
  onPressed: () {},
)

ConditionOptionCard.selected(
  title: '쾌적함',
  description: '사람 적고 상태 양호',
  onPressed: () {},
)

ConditionOptionCard(
  title: '혼잡함',
  description: '사람 많고 이용 어려움',
  backgroundColor: FigmaColors.gray400,
  borderColor: FigmaColors.primary100,
  titleColor: FigmaColors.primary50,
  descriptionColor: FigmaColors.primary50,
)
```

## AppTopBar

```text
const AppTopBar(
  title: 'Pages',
  width: 360,
)

AppTopBar(
  title: 'Pages',
  actionText: '완료',
  onBackPressed: () {},
  onActionPressed: () {},
)

AppTopBar.disabledAction(
  title: 'Pages',
  actionText: '완료',
  onBackPressed: () {},
)

AppTopBar(
  title: 'Pages',
  leading: const Icon(Icons.close, color: FigmaColors.white),
  trailing: const Icon(Icons.more_horiz, color: FigmaColors.white),
)
```

## AppModal

```text
AppModal(
  title: '다시 만들어볼까요?',
  description: '서브 설명입니다\n서브 설명이요.',
  secondaryButtonText: '취소',
  primaryButtonText: '확인',
  onSecondaryPressed: () {},
  onPrimaryPressed: () {},
  onClosePressed: () {},
)

const AppModal(
  title: '알림',
  description: '내용을 확인해주세요.',
  primaryButtonText: '확인',
  showCloseButton: false,
)

AppModal(
  title: '삭제할까요?',
  description: '삭제한 내용은 되돌릴 수 없어요.',
  secondaryButtonText: '취소',
  primaryButtonText: '삭제',
  primaryButtonColor: FigmaColors.error,
  onSecondaryPressed: () {},
  onPrimaryPressed: () {},
)
```
