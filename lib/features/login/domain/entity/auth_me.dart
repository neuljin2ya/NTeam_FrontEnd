import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_me.freezed.dart';

@freezed
abstract class AuthMe with _$AuthMe {
  const factory AuthMe({
    String? nickName,
  }) = _AuthMe;

  const AuthMe._();

  bool get isRegistered =>
      nickName != null && nickName!.trim().isNotEmpty;
}
