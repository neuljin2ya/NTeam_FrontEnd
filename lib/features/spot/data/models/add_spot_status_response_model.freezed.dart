// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_spot_status_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddSpotStatusResponseModel {
  bool get isSuccess;
  String get code;
  String get message;
  List<String>? get result;

  /// Create a copy of AddSpotStatusResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddSpotStatusResponseModelCopyWith<AddSpotStatusResponseModel>
      get copyWith =>
          _$AddSpotStatusResponseModelCopyWithImpl<AddSpotStatusResponseModel>(
              this as AddSpotStatusResponseModel, _$identity);

  /// Serializes this AddSpotStatusResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddSpotStatusResponseModel &&
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
    return 'AddSpotStatusResponseModel(isSuccess: $isSuccess, code: $code, message: $message, result: $result)';
  }
}

/// @nodoc
abstract mixin class $AddSpotStatusResponseModelCopyWith<$Res> {
  factory $AddSpotStatusResponseModelCopyWith(AddSpotStatusResponseModel value,
          $Res Function(AddSpotStatusResponseModel) _then) =
      _$AddSpotStatusResponseModelCopyWithImpl;
  @useResult
  $Res call(
      {bool isSuccess, String code, String message, List<String>? result});
}

/// @nodoc
class _$AddSpotStatusResponseModelCopyWithImpl<$Res>
    implements $AddSpotStatusResponseModelCopyWith<$Res> {
  _$AddSpotStatusResponseModelCopyWithImpl(this._self, this._then);

  final AddSpotStatusResponseModel _self;
  final $Res Function(AddSpotStatusResponseModel) _then;

  /// Create a copy of AddSpotStatusResponseModel
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
              as List<String>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AddSpotStatusResponseModel].
extension AddSpotStatusResponseModelPatterns on AddSpotStatusResponseModel {
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
    TResult Function(_AddSpotStatusResponseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AddSpotStatusResponseModel() when $default != null:
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
    TResult Function(_AddSpotStatusResponseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddSpotStatusResponseModel():
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
    TResult? Function(_AddSpotStatusResponseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddSpotStatusResponseModel() when $default != null:
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
            bool isSuccess, String code, String message, List<String>? result)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AddSpotStatusResponseModel() when $default != null:
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
            bool isSuccess, String code, String message, List<String>? result)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddSpotStatusResponseModel():
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
            bool isSuccess, String code, String message, List<String>? result)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddSpotStatusResponseModel() when $default != null:
        return $default(
            _that.isSuccess, _that.code, _that.message, _that.result);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AddSpotStatusResponseModel extends AddSpotStatusResponseModel {
  const _AddSpotStatusResponseModel(
      {required this.isSuccess,
      required this.code,
      required this.message,
      final List<String>? result})
      : _result = result,
        super._();
  factory _AddSpotStatusResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AddSpotStatusResponseModelFromJson(json);

  @override
  final bool isSuccess;
  @override
  final String code;
  @override
  final String message;
  final List<String>? _result;
  @override
  List<String>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of AddSpotStatusResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddSpotStatusResponseModelCopyWith<_AddSpotStatusResponseModel>
      get copyWith => __$AddSpotStatusResponseModelCopyWithImpl<
          _AddSpotStatusResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AddSpotStatusResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddSpotStatusResponseModel &&
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
    return 'AddSpotStatusResponseModel(isSuccess: $isSuccess, code: $code, message: $message, result: $result)';
  }
}

/// @nodoc
abstract mixin class _$AddSpotStatusResponseModelCopyWith<$Res>
    implements $AddSpotStatusResponseModelCopyWith<$Res> {
  factory _$AddSpotStatusResponseModelCopyWith(
          _AddSpotStatusResponseModel value,
          $Res Function(_AddSpotStatusResponseModel) _then) =
      __$AddSpotStatusResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isSuccess, String code, String message, List<String>? result});
}

/// @nodoc
class __$AddSpotStatusResponseModelCopyWithImpl<$Res>
    implements _$AddSpotStatusResponseModelCopyWith<$Res> {
  __$AddSpotStatusResponseModelCopyWithImpl(this._self, this._then);

  final _AddSpotStatusResponseModel _self;
  final $Res Function(_AddSpotStatusResponseModel) _then;

  /// Create a copy of AddSpotStatusResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isSuccess = null,
    Object? code = null,
    Object? message = null,
    Object? result = freezed,
  }) {
    return _then(_AddSpotStatusResponseModel(
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
              as List<String>?,
    ));
  }
}

// dart format on
