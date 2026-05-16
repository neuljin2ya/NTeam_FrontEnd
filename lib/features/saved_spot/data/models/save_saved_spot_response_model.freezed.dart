// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_saved_spot_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaveSavedSpotResponseModel {
  bool get isSuccess;
  String get code;
  String get message;
  SavedSpotResultModel? get result;

  /// Create a copy of SaveSavedSpotResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SaveSavedSpotResponseModelCopyWith<SaveSavedSpotResponseModel>
      get copyWith =>
          _$SaveSavedSpotResponseModelCopyWithImpl<SaveSavedSpotResponseModel>(
              this as SaveSavedSpotResponseModel, _$identity);

  /// Serializes this SaveSavedSpotResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveSavedSpotResponseModel &&
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
    return 'SaveSavedSpotResponseModel(isSuccess: $isSuccess, code: $code, message: $message, result: $result)';
  }
}

/// @nodoc
abstract mixin class $SaveSavedSpotResponseModelCopyWith<$Res> {
  factory $SaveSavedSpotResponseModelCopyWith(SaveSavedSpotResponseModel value,
          $Res Function(SaveSavedSpotResponseModel) _then) =
      _$SaveSavedSpotResponseModelCopyWithImpl;
  @useResult
  $Res call(
      {bool isSuccess,
      String code,
      String message,
      SavedSpotResultModel? result});

  $SavedSpotResultModelCopyWith<$Res>? get result;
}

/// @nodoc
class _$SaveSavedSpotResponseModelCopyWithImpl<$Res>
    implements $SaveSavedSpotResponseModelCopyWith<$Res> {
  _$SaveSavedSpotResponseModelCopyWithImpl(this._self, this._then);

  final SaveSavedSpotResponseModel _self;
  final $Res Function(SaveSavedSpotResponseModel) _then;

  /// Create a copy of SaveSavedSpotResponseModel
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
              as SavedSpotResultModel?,
    ));
  }

  /// Create a copy of SaveSavedSpotResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SavedSpotResultModelCopyWith<$Res>? get result {
    if (_self.result == null) {
      return null;
    }

    return $SavedSpotResultModelCopyWith<$Res>(_self.result!, (value) {
      return _then(_self.copyWith(result: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SaveSavedSpotResponseModel].
extension SaveSavedSpotResponseModelPatterns on SaveSavedSpotResponseModel {
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
    TResult Function(_SaveSavedSpotResponseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SaveSavedSpotResponseModel() when $default != null:
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
    TResult Function(_SaveSavedSpotResponseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveSavedSpotResponseModel():
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
    TResult? Function(_SaveSavedSpotResponseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveSavedSpotResponseModel() when $default != null:
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
            SavedSpotResultModel? result)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SaveSavedSpotResponseModel() when $default != null:
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
            SavedSpotResultModel? result)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveSavedSpotResponseModel():
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
            SavedSpotResultModel? result)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveSavedSpotResponseModel() when $default != null:
        return $default(
            _that.isSuccess, _that.code, _that.message, _that.result);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SaveSavedSpotResponseModel extends SaveSavedSpotResponseModel {
  const _SaveSavedSpotResponseModel(
      {required this.isSuccess,
      required this.code,
      required this.message,
      this.result})
      : super._();
  factory _SaveSavedSpotResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SaveSavedSpotResponseModelFromJson(json);

  @override
  final bool isSuccess;
  @override
  final String code;
  @override
  final String message;
  @override
  final SavedSpotResultModel? result;

  /// Create a copy of SaveSavedSpotResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SaveSavedSpotResponseModelCopyWith<_SaveSavedSpotResponseModel>
      get copyWith => __$SaveSavedSpotResponseModelCopyWithImpl<
          _SaveSavedSpotResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SaveSavedSpotResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveSavedSpotResponseModel &&
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
    return 'SaveSavedSpotResponseModel(isSuccess: $isSuccess, code: $code, message: $message, result: $result)';
  }
}

/// @nodoc
abstract mixin class _$SaveSavedSpotResponseModelCopyWith<$Res>
    implements $SaveSavedSpotResponseModelCopyWith<$Res> {
  factory _$SaveSavedSpotResponseModelCopyWith(
          _SaveSavedSpotResponseModel value,
          $Res Function(_SaveSavedSpotResponseModel) _then) =
      __$SaveSavedSpotResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isSuccess,
      String code,
      String message,
      SavedSpotResultModel? result});

  @override
  $SavedSpotResultModelCopyWith<$Res>? get result;
}

/// @nodoc
class __$SaveSavedSpotResponseModelCopyWithImpl<$Res>
    implements _$SaveSavedSpotResponseModelCopyWith<$Res> {
  __$SaveSavedSpotResponseModelCopyWithImpl(this._self, this._then);

  final _SaveSavedSpotResponseModel _self;
  final $Res Function(_SaveSavedSpotResponseModel) _then;

  /// Create a copy of SaveSavedSpotResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isSuccess = null,
    Object? code = null,
    Object? message = null,
    Object? result = freezed,
  }) {
    return _then(_SaveSavedSpotResponseModel(
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
              as SavedSpotResultModel?,
    ));
  }

  /// Create a copy of SaveSavedSpotResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SavedSpotResultModelCopyWith<$Res>? get result {
    if (_self.result == null) {
      return null;
    }

    return $SavedSpotResultModelCopyWith<$Res>(_self.result!, (value) {
      return _then(_self.copyWith(result: value));
    });
  }
}

// dart format on
