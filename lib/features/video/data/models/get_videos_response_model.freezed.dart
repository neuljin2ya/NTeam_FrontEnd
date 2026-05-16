// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_videos_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetVideosResponseModel {
  bool get isSuccess;
  String get code;
  String get message;
  List<VideoModel>? get result;

  /// Create a copy of GetVideosResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetVideosResponseModelCopyWith<GetVideosResponseModel> get copyWith =>
      _$GetVideosResponseModelCopyWithImpl<GetVideosResponseModel>(
          this as GetVideosResponseModel, _$identity);

  /// Serializes this GetVideosResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetVideosResponseModel &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isSuccess, code, message,
      const DeepCollectionEquality().hash(result));

  @override
  String toString() {
    return 'GetVideosResponseModel(isSuccess: $isSuccess, code: $code, message: $message, result: $result)';
  }
}

/// @nodoc
abstract mixin class $GetVideosResponseModelCopyWith<$Res> {
  factory $GetVideosResponseModelCopyWith(GetVideosResponseModel value,
          $Res Function(GetVideosResponseModel) _then) =
      _$GetVideosResponseModelCopyWithImpl;
  @useResult
  $Res call(
      {bool isSuccess, String code, String message, List<VideoModel>? result});
}

/// @nodoc
class _$GetVideosResponseModelCopyWithImpl<$Res>
    implements $GetVideosResponseModelCopyWith<$Res> {
  _$GetVideosResponseModelCopyWithImpl(this._self, this._then);

  final GetVideosResponseModel _self;
  final $Res Function(GetVideosResponseModel) _then;

  /// Create a copy of GetVideosResponseModel
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
              as List<VideoModel>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [GetVideosResponseModel].
extension GetVideosResponseModelPatterns on GetVideosResponseModel {
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
    TResult Function(_GetVideosResponseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetVideosResponseModel() when $default != null:
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
    TResult Function(_GetVideosResponseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetVideosResponseModel():
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
    TResult? Function(_GetVideosResponseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetVideosResponseModel() when $default != null:
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
            List<VideoModel>? result)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetVideosResponseModel() when $default != null:
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
            List<VideoModel>? result)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetVideosResponseModel():
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
            List<VideoModel>? result)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetVideosResponseModel() when $default != null:
        return $default(
            _that.isSuccess, _that.code, _that.message, _that.result);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GetVideosResponseModel extends GetVideosResponseModel {
  const _GetVideosResponseModel(
      {required this.isSuccess,
      required this.code,
      required this.message,
      final List<VideoModel>? result})
      : _result = result,
        super._();
  factory _GetVideosResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetVideosResponseModelFromJson(json);

  @override
  final bool isSuccess;
  @override
  final String code;
  @override
  final String message;
  final List<VideoModel>? _result;
  @override
  List<VideoModel>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of GetVideosResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetVideosResponseModelCopyWith<_GetVideosResponseModel> get copyWith =>
      __$GetVideosResponseModelCopyWithImpl<_GetVideosResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GetVideosResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetVideosResponseModel &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isSuccess, code, message,
      const DeepCollectionEquality().hash(_result));

  @override
  String toString() {
    return 'GetVideosResponseModel(isSuccess: $isSuccess, code: $code, message: $message, result: $result)';
  }
}

/// @nodoc
abstract mixin class _$GetVideosResponseModelCopyWith<$Res>
    implements $GetVideosResponseModelCopyWith<$Res> {
  factory _$GetVideosResponseModelCopyWith(_GetVideosResponseModel value,
          $Res Function(_GetVideosResponseModel) _then) =
      __$GetVideosResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isSuccess, String code, String message, List<VideoModel>? result});
}

/// @nodoc
class __$GetVideosResponseModelCopyWithImpl<$Res>
    implements _$GetVideosResponseModelCopyWith<$Res> {
  __$GetVideosResponseModelCopyWithImpl(this._self, this._then);

  final _GetVideosResponseModel _self;
  final $Res Function(_GetVideosResponseModel) _then;

  /// Create a copy of GetVideosResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isSuccess = null,
    Object? code = null,
    Object? message = null,
    Object? result = freezed,
  }) {
    return _then(_GetVideosResponseModel(
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
          ? _self._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<VideoModel>?,
    ));
  }
}

// dart format on
