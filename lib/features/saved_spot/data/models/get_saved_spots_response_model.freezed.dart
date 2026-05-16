// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_saved_spots_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetSavedSpotsResponseModel {
  bool get isSuccess;
  String get code;
  String get message;
  @JsonKey(name: 'result')
  List<SavedSpotListItemModel>? get data;

  /// Create a copy of GetSavedSpotsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetSavedSpotsResponseModelCopyWith<GetSavedSpotsResponseModel>
      get copyWith =>
          _$GetSavedSpotsResponseModelCopyWithImpl<GetSavedSpotsResponseModel>(
              this as GetSavedSpotsResponseModel, _$identity);

  /// Serializes this GetSavedSpotsResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetSavedSpotsResponseModel &&
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
    return 'GetSavedSpotsResponseModel(isSuccess: $isSuccess, code: $code, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $GetSavedSpotsResponseModelCopyWith<$Res> {
  factory $GetSavedSpotsResponseModelCopyWith(GetSavedSpotsResponseModel value,
          $Res Function(GetSavedSpotsResponseModel) _then) =
      _$GetSavedSpotsResponseModelCopyWithImpl;
  @useResult
  $Res call(
      {bool isSuccess,
      String code,
      String message,
      @JsonKey(name: 'result') List<SavedSpotListItemModel>? data});
}

/// @nodoc
class _$GetSavedSpotsResponseModelCopyWithImpl<$Res>
    implements $GetSavedSpotsResponseModelCopyWith<$Res> {
  _$GetSavedSpotsResponseModelCopyWithImpl(this._self, this._then);

  final GetSavedSpotsResponseModel _self;
  final $Res Function(GetSavedSpotsResponseModel) _then;

  /// Create a copy of GetSavedSpotsResponseModel
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
              as List<SavedSpotListItemModel>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [GetSavedSpotsResponseModel].
extension GetSavedSpotsResponseModelPatterns on GetSavedSpotsResponseModel {
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
    TResult Function(_GetSavedSpotsResponseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetSavedSpotsResponseModel() when $default != null:
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
    TResult Function(_GetSavedSpotsResponseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetSavedSpotsResponseModel():
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
    TResult? Function(_GetSavedSpotsResponseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetSavedSpotsResponseModel() when $default != null:
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
            @JsonKey(name: 'result') List<SavedSpotListItemModel>? data)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetSavedSpotsResponseModel() when $default != null:
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
            @JsonKey(name: 'result') List<SavedSpotListItemModel>? data)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetSavedSpotsResponseModel():
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
            @JsonKey(name: 'result') List<SavedSpotListItemModel>? data)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetSavedSpotsResponseModel() when $default != null:
        return $default(_that.isSuccess, _that.code, _that.message, _that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GetSavedSpotsResponseModel extends GetSavedSpotsResponseModel {
  const _GetSavedSpotsResponseModel(
      {required this.isSuccess,
      required this.code,
      required this.message,
      @JsonKey(name: 'result') final List<SavedSpotListItemModel>? data})
      : _data = data,
        super._();
  factory _GetSavedSpotsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetSavedSpotsResponseModelFromJson(json);

  @override
  final bool isSuccess;
  @override
  final String code;
  @override
  final String message;
  final List<SavedSpotListItemModel>? _data;
  @override
  @JsonKey(name: 'result')
  List<SavedSpotListItemModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of GetSavedSpotsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetSavedSpotsResponseModelCopyWith<_GetSavedSpotsResponseModel>
      get copyWith => __$GetSavedSpotsResponseModelCopyWithImpl<
          _GetSavedSpotsResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GetSavedSpotsResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetSavedSpotsResponseModel &&
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
    return 'GetSavedSpotsResponseModel(isSuccess: $isSuccess, code: $code, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$GetSavedSpotsResponseModelCopyWith<$Res>
    implements $GetSavedSpotsResponseModelCopyWith<$Res> {
  factory _$GetSavedSpotsResponseModelCopyWith(
          _GetSavedSpotsResponseModel value,
          $Res Function(_GetSavedSpotsResponseModel) _then) =
      __$GetSavedSpotsResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isSuccess,
      String code,
      String message,
      @JsonKey(name: 'result') List<SavedSpotListItemModel>? data});
}

/// @nodoc
class __$GetSavedSpotsResponseModelCopyWithImpl<$Res>
    implements _$GetSavedSpotsResponseModelCopyWith<$Res> {
  __$GetSavedSpotsResponseModelCopyWithImpl(this._self, this._then);

  final _GetSavedSpotsResponseModel _self;
  final $Res Function(_GetSavedSpotsResponseModel) _then;

  /// Create a copy of GetSavedSpotsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isSuccess = null,
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_GetSavedSpotsResponseModel(
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
              as List<SavedSpotListItemModel>?,
    ));
  }
}

// dart format on
