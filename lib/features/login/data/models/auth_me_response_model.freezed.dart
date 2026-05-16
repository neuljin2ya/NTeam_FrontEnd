// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_me_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthMeResponseModel {
  bool get isSuccess;
  String get code;
  String get message;
  AuthMeResultModel? get result;

  /// Create a copy of AuthMeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthMeResponseModelCopyWith<AuthMeResponseModel> get copyWith =>
      _$AuthMeResponseModelCopyWithImpl<AuthMeResponseModel>(
          this as AuthMeResponseModel, _$identity);

  /// Serializes this AuthMeResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthMeResponseModel &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isSuccess, code, message, result);

  @override
  String toString() {
    return 'AuthMeResponseModel(isSuccess: $isSuccess, code: $code, message: $message, result: $result)';
  }
}

/// @nodoc
abstract mixin class $AuthMeResponseModelCopyWith<$Res> {
  factory $AuthMeResponseModelCopyWith(
          AuthMeResponseModel value, $Res Function(AuthMeResponseModel) _then) =
      _$AuthMeResponseModelCopyWithImpl;
  @useResult
  $Res call(
      {bool isSuccess, String code, String message, AuthMeResultModel? result});

  $AuthMeResultModelCopyWith<$Res>? get result;
}

/// @nodoc
class _$AuthMeResponseModelCopyWithImpl<$Res>
    implements $AuthMeResponseModelCopyWith<$Res> {
  _$AuthMeResponseModelCopyWithImpl(this._self, this._then);

  final AuthMeResponseModel _self;
  final $Res Function(AuthMeResponseModel) _then;

  /// Create a copy of AuthMeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? code = null,
    Object? message = null,
    Object? result = freezed,
  }) {
    return _then(_self.copyWith(
      isSuccess: null == isSuccess
          ? _self.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      result: freezed == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as AuthMeResultModel?,
    ));
  }

  /// Create a copy of AuthMeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthMeResultModelCopyWith<$Res>? get result {
    if (_self.result == null) {
      return null;
    }

    return $AuthMeResultModelCopyWith<$Res>(_self.result!, (value) {
      return _then(_self.copyWith(result: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AuthMeResponseModel].
extension AuthMeResponseModelPatterns on AuthMeResponseModel {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthMeResponseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthMeResponseModel() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_AuthMeResponseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthMeResponseModel():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthMeResponseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthMeResponseModel() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool isSuccess, String code, String message,
            AuthMeResultModel? result)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthMeResponseModel() when $default != null:
        return $default(
            _that.isSuccess, _that.code, _that.message, _that.result);
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
  TResult when<TResult extends Object?>(
    TResult Function(bool isSuccess, String code, String message,
            AuthMeResultModel? result)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthMeResponseModel():
        return $default(
            _that.isSuccess, _that.code, _that.message, _that.result);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool isSuccess, String code, String message,
            AuthMeResultModel? result)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthMeResponseModel() when $default != null:
        return $default(
            _that.isSuccess, _that.code, _that.message, _that.result);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AuthMeResponseModel extends AuthMeResponseModel {
  const _AuthMeResponseModel(
      {required this.isSuccess,
      required this.code,
      required this.message,
      this.result})
      : super._();
  factory _AuthMeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthMeResponseModelFromJson(json);

  @override
  final bool isSuccess;
  @override
  final String code;
  @override
  final String message;
  @override
  final AuthMeResultModel? result;

  /// Create a copy of AuthMeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthMeResponseModelCopyWith<_AuthMeResponseModel> get copyWith =>
      __$AuthMeResponseModelCopyWithImpl<_AuthMeResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AuthMeResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthMeResponseModel &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isSuccess, code, message, result);

  @override
  String toString() {
    return 'AuthMeResponseModel(isSuccess: $isSuccess, code: $code, message: $message, result: $result)';
  }
}

/// @nodoc
abstract mixin class _$AuthMeResponseModelCopyWith<$Res>
    implements $AuthMeResponseModelCopyWith<$Res> {
  factory _$AuthMeResponseModelCopyWith(_AuthMeResponseModel value,
          $Res Function(_AuthMeResponseModel) _then) =
      __$AuthMeResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isSuccess, String code, String message, AuthMeResultModel? result});

  @override
  $AuthMeResultModelCopyWith<$Res>? get result;
}

/// @nodoc
class __$AuthMeResponseModelCopyWithImpl<$Res>
    implements _$AuthMeResponseModelCopyWith<$Res> {
  __$AuthMeResponseModelCopyWithImpl(this._self, this._then);

  final _AuthMeResponseModel _self;
  final $Res Function(_AuthMeResponseModel) _then;

  /// Create a copy of AuthMeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isSuccess = null,
    Object? code = null,
    Object? message = null,
    Object? result = freezed,
  }) {
    return _then(_AuthMeResponseModel(
      isSuccess: null == isSuccess
          ? _self.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      result: freezed == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as AuthMeResultModel?,
    ));
  }

  /// Create a copy of AuthMeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthMeResultModelCopyWith<$Res>? get result {
    if (_self.result == null) {
      return null;
    }

    return $AuthMeResultModelCopyWith<$Res>(_self.result!, (value) {
      return _then(_self.copyWith(result: value));
    });
  }
}

// dart format on
