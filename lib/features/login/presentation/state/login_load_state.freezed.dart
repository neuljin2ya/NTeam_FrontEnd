// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_load_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginLoadState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginLoadState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginLoadState()';
  }
}

/// @nodoc
class $LoginLoadStateCopyWith<$Res> {
  $LoginLoadStateCopyWith(LoginLoadState _, $Res Function(LoginLoadState) __);
}

/// Adds pattern-matching-related methods to [LoginLoadState].
extension LoginLoadStatePatterns on LoginLoadState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginLoadIdle value)? idle,
    TResult Function(LoginLoadLoading value)? loading,
    TResult Function(LoginLoadSuccess value)? success,
    TResult Function(LoginLoadFailure value)? failure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case LoginLoadIdle() when idle != null:
        return idle(_that);
      case LoginLoadLoading() when loading != null:
        return loading(_that);
      case LoginLoadSuccess() when success != null:
        return success(_that);
      case LoginLoadFailure() when failure != null:
        return failure(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginLoadIdle value) idle,
    required TResult Function(LoginLoadLoading value) loading,
    required TResult Function(LoginLoadSuccess value) success,
    required TResult Function(LoginLoadFailure value) failure,
  }) {
    final _that = this;
    switch (_that) {
      case LoginLoadIdle():
        return idle(_that);
      case LoginLoadLoading():
        return loading(_that);
      case LoginLoadSuccess():
        return success(_that);
      case LoginLoadFailure():
        return failure(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginLoadIdle value)? idle,
    TResult? Function(LoginLoadLoading value)? loading,
    TResult? Function(LoginLoadSuccess value)? success,
    TResult? Function(LoginLoadFailure value)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case LoginLoadIdle() when idle != null:
        return idle(_that);
      case LoginLoadLoading() when loading != null:
        return loading(_that);
      case LoginLoadSuccess() when success != null:
        return success(_that);
      case LoginLoadFailure() when failure != null:
        return failure(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case LoginLoadIdle() when idle != null:
        return idle();
      case LoginLoadLoading() when loading != null:
        return loading();
      case LoginLoadSuccess() when success != null:
        return success();
      case LoginLoadFailure() when failure != null:
        return failure(_that.message);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    final _that = this;
    switch (_that) {
      case LoginLoadIdle():
        return idle();
      case LoginLoadLoading():
        return loading();
      case LoginLoadSuccess():
        return success();
      case LoginLoadFailure():
        return failure(_that.message);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case LoginLoadIdle() when idle != null:
        return idle();
      case LoginLoadLoading() when loading != null:
        return loading();
      case LoginLoadSuccess() when success != null:
        return success();
      case LoginLoadFailure() when failure != null:
        return failure(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class LoginLoadIdle implements LoginLoadState {
  const LoginLoadIdle();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginLoadIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginLoadState.idle()';
  }
}

/// @nodoc

class LoginLoadLoading implements LoginLoadState {
  const LoginLoadLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginLoadLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginLoadState.loading()';
  }
}

/// @nodoc

class LoginLoadSuccess implements LoginLoadState {
  const LoginLoadSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginLoadSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginLoadState.success()';
  }
}

/// @nodoc

class LoginLoadFailure implements LoginLoadState {
  const LoginLoadFailure(this.message);

  final String message;

  /// Create a copy of LoginLoadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginLoadFailureCopyWith<LoginLoadFailure> get copyWith =>
      _$LoginLoadFailureCopyWithImpl<LoginLoadFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginLoadFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'LoginLoadState.failure(message: $message)';
  }
}

/// @nodoc
abstract mixin class $LoginLoadFailureCopyWith<$Res>
    implements $LoginLoadStateCopyWith<$Res> {
  factory $LoginLoadFailureCopyWith(
          LoginLoadFailure value, $Res Function(LoginLoadFailure) _then) =
      _$LoginLoadFailureCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$LoginLoadFailureCopyWithImpl<$Res>
    implements $LoginLoadFailureCopyWith<$Res> {
  _$LoginLoadFailureCopyWithImpl(this._self, this._then);

  final LoginLoadFailure _self;
  final $Res Function(LoginLoadFailure) _then;

  /// Create a copy of LoginLoadState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(LoginLoadFailure(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
