// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_spots_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetSpotsResponseModel {
  bool get isSuccess;
  String get code;
  String get message;
  @JsonKey(name: 'result')
  List<SpotModel>? get data;

  /// Create a copy of GetSpotsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetSpotsResponseModelCopyWith<GetSpotsResponseModel> get copyWith =>
      _$GetSpotsResponseModelCopyWithImpl<GetSpotsResponseModel>(
          this as GetSpotsResponseModel, _$identity);

  /// Serializes this GetSpotsResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetSpotsResponseModel &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isSuccess, code, message,
      const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'GetSpotsResponseModel(isSuccess: $isSuccess, code: $code, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $GetSpotsResponseModelCopyWith<$Res> {
  factory $GetSpotsResponseModelCopyWith(GetSpotsResponseModel value,
          $Res Function(GetSpotsResponseModel) _then) =
      _$GetSpotsResponseModelCopyWithImpl;
  @useResult
  $Res call(
      {bool isSuccess,
      String code,
      String message,
      @JsonKey(name: 'result') List<SpotModel>? data});
}

/// @nodoc
class _$GetSpotsResponseModelCopyWithImpl<$Res>
    implements $GetSpotsResponseModelCopyWith<$Res> {
  _$GetSpotsResponseModelCopyWithImpl(this._self, this._then);

  final GetSpotsResponseModel _self;
  final $Res Function(GetSpotsResponseModel) _then;

  /// Create a copy of GetSpotsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
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
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SpotModel>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [GetSpotsResponseModel].
extension GetSpotsResponseModelPatterns on GetSpotsResponseModel {
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
    TResult Function(_GetSpotsResponseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetSpotsResponseModel() when $default != null:
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
    TResult Function(_GetSpotsResponseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetSpotsResponseModel():
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
    TResult? Function(_GetSpotsResponseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetSpotsResponseModel() when $default != null:
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
            @JsonKey(name: 'result') List<SpotModel>? data)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetSpotsResponseModel() when $default != null:
        return $default(_that.isSuccess, _that.code, _that.message, _that.data);
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
            @JsonKey(name: 'result') List<SpotModel>? data)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetSpotsResponseModel():
        return $default(_that.isSuccess, _that.code, _that.message, _that.data);
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
            @JsonKey(name: 'result') List<SpotModel>? data)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetSpotsResponseModel() when $default != null:
        return $default(_that.isSuccess, _that.code, _that.message, _that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GetSpotsResponseModel implements GetSpotsResponseModel {
  const _GetSpotsResponseModel(
      {required this.isSuccess,
      required this.code,
      required this.message,
      @JsonKey(name: 'result') final List<SpotModel>? data})
      : _data = data;
  factory _GetSpotsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetSpotsResponseModelFromJson(json);

  @override
  final bool isSuccess;
  @override
  final String code;
  @override
  final String message;
  final List<SpotModel>? _data;
  @override
  @JsonKey(name: 'result')
  List<SpotModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of GetSpotsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetSpotsResponseModelCopyWith<_GetSpotsResponseModel> get copyWith =>
      __$GetSpotsResponseModelCopyWithImpl<_GetSpotsResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GetSpotsResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetSpotsResponseModel &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isSuccess, code, message,
      const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'GetSpotsResponseModel(isSuccess: $isSuccess, code: $code, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$GetSpotsResponseModelCopyWith<$Res>
    implements $GetSpotsResponseModelCopyWith<$Res> {
  factory _$GetSpotsResponseModelCopyWith(_GetSpotsResponseModel value,
          $Res Function(_GetSpotsResponseModel) _then) =
      __$GetSpotsResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isSuccess,
      String code,
      String message,
      @JsonKey(name: 'result') List<SpotModel>? data});
}

/// @nodoc
class __$GetSpotsResponseModelCopyWithImpl<$Res>
    implements _$GetSpotsResponseModelCopyWith<$Res> {
  __$GetSpotsResponseModelCopyWithImpl(this._self, this._then);

  final _GetSpotsResponseModel _self;
  final $Res Function(_GetSpotsResponseModel) _then;

  /// Create a copy of GetSpotsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isSuccess = null,
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_GetSpotsResponseModel(
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
      data: freezed == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SpotModel>?,
    ));
  }
}

// dart format on
