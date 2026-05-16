// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_video_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateVideoResponseModel {
  bool get isSuccess;
  String get code;
  String get message;
  VideoModel? get result;

  /// Create a copy of CreateVideoResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateVideoResponseModelCopyWith<CreateVideoResponseModel> get copyWith =>
      _$CreateVideoResponseModelCopyWithImpl<CreateVideoResponseModel>(
          this as CreateVideoResponseModel, _$identity);

  /// Serializes this CreateVideoResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateVideoResponseModel &&
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
    return 'CreateVideoResponseModel(isSuccess: $isSuccess, code: $code, message: $message, result: $result)';
  }
}

/// @nodoc
abstract mixin class $CreateVideoResponseModelCopyWith<$Res> {
  factory $CreateVideoResponseModelCopyWith(CreateVideoResponseModel value,
          $Res Function(CreateVideoResponseModel) _then) =
      _$CreateVideoResponseModelCopyWithImpl;
  @useResult
  $Res call({bool isSuccess, String code, String message, VideoModel? result});

  $VideoModelCopyWith<$Res>? get result;
}

/// @nodoc
class _$CreateVideoResponseModelCopyWithImpl<$Res>
    implements $CreateVideoResponseModelCopyWith<$Res> {
  _$CreateVideoResponseModelCopyWithImpl(this._self, this._then);

  final CreateVideoResponseModel _self;
  final $Res Function(CreateVideoResponseModel) _then;

  /// Create a copy of CreateVideoResponseModel
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
              as VideoModel?,
    ));
  }

  /// Create a copy of CreateVideoResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoModelCopyWith<$Res>? get result {
    if (_self.result == null) {
      return null;
    }

    return $VideoModelCopyWith<$Res>(_self.result!, (value) {
      return _then(_self.copyWith(result: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CreateVideoResponseModel].
extension CreateVideoResponseModelPatterns on CreateVideoResponseModel {
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
    TResult Function(_CreateVideoResponseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateVideoResponseModel() when $default != null:
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
    TResult Function(_CreateVideoResponseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateVideoResponseModel():
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
    TResult? Function(_CreateVideoResponseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateVideoResponseModel() when $default != null:
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
    TResult Function(
            bool isSuccess, String code, String message, VideoModel? result)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateVideoResponseModel() when $default != null:
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
    TResult Function(
            bool isSuccess, String code, String message, VideoModel? result)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateVideoResponseModel():
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
    TResult? Function(
            bool isSuccess, String code, String message, VideoModel? result)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateVideoResponseModel() when $default != null:
        return $default(
            _that.isSuccess, _that.code, _that.message, _that.result);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateVideoResponseModel extends CreateVideoResponseModel {
  const _CreateVideoResponseModel(
      {required this.isSuccess,
      required this.code,
      required this.message,
      this.result})
      : super._();
  factory _CreateVideoResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CreateVideoResponseModelFromJson(json);

  @override
  final bool isSuccess;
  @override
  final String code;
  @override
  final String message;
  @override
  final VideoModel? result;

  /// Create a copy of CreateVideoResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateVideoResponseModelCopyWith<_CreateVideoResponseModel> get copyWith =>
      __$CreateVideoResponseModelCopyWithImpl<_CreateVideoResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateVideoResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateVideoResponseModel &&
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
    return 'CreateVideoResponseModel(isSuccess: $isSuccess, code: $code, message: $message, result: $result)';
  }
}

/// @nodoc
abstract mixin class _$CreateVideoResponseModelCopyWith<$Res>
    implements $CreateVideoResponseModelCopyWith<$Res> {
  factory _$CreateVideoResponseModelCopyWith(_CreateVideoResponseModel value,
          $Res Function(_CreateVideoResponseModel) _then) =
      __$CreateVideoResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call({bool isSuccess, String code, String message, VideoModel? result});

  @override
  $VideoModelCopyWith<$Res>? get result;
}

/// @nodoc
class __$CreateVideoResponseModelCopyWithImpl<$Res>
    implements _$CreateVideoResponseModelCopyWith<$Res> {
  __$CreateVideoResponseModelCopyWithImpl(this._self, this._then);

  final _CreateVideoResponseModel _self;
  final $Res Function(_CreateVideoResponseModel) _then;

  /// Create a copy of CreateVideoResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isSuccess = null,
    Object? code = null,
    Object? message = null,
    Object? result = freezed,
  }) {
    return _then(_CreateVideoResponseModel(
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
              as VideoModel?,
    ));
  }

  /// Create a copy of CreateVideoResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoModelCopyWith<$Res>? get result {
    if (_self.result == null) {
      return null;
    }

    return $VideoModelCopyWith<$Res>(_self.result!, (value) {
      return _then(_self.copyWith(result: value));
    });
  }
}

// dart format on
