// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_spot_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateSpotResponseModel {
  String get code;
  String get message;
  CreateSpotDataModel? get data;

  /// Create a copy of CreateSpotResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateSpotResponseModelCopyWith<CreateSpotResponseModel> get copyWith =>
      _$CreateSpotResponseModelCopyWithImpl<CreateSpotResponseModel>(
          this as CreateSpotResponseModel, _$identity);

  /// Serializes this CreateSpotResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateSpotResponseModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, data);

  @override
  String toString() {
    return 'CreateSpotResponseModel(code: $code, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $CreateSpotResponseModelCopyWith<$Res> {
  factory $CreateSpotResponseModelCopyWith(CreateSpotResponseModel value,
          $Res Function(CreateSpotResponseModel) _then) =
      _$CreateSpotResponseModelCopyWithImpl;
  @useResult
  $Res call({String code, String message, CreateSpotDataModel? data});

  $CreateSpotDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreateSpotResponseModelCopyWithImpl<$Res>
    implements $CreateSpotResponseModelCopyWith<$Res> {
  _$CreateSpotResponseModelCopyWithImpl(this._self, this._then);

  final CreateSpotResponseModel _self;
  final $Res Function(CreateSpotResponseModel) _then;

  /// Create a copy of CreateSpotResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
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
              as CreateSpotDataModel?,
    ));
  }

  /// Create a copy of CreateSpotResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateSpotDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $CreateSpotDataModelCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CreateSpotResponseModel].
extension CreateSpotResponseModelPatterns on CreateSpotResponseModel {
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
    TResult Function(_CreateSpotResponseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateSpotResponseModel() when $default != null:
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
    TResult Function(_CreateSpotResponseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSpotResponseModel():
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
    TResult? Function(_CreateSpotResponseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSpotResponseModel() when $default != null:
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
    TResult Function(String code, String message, CreateSpotDataModel? data)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateSpotResponseModel() when $default != null:
        return $default(_that.code, _that.message, _that.data);
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
    TResult Function(String code, String message, CreateSpotDataModel? data)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSpotResponseModel():
        return $default(_that.code, _that.message, _that.data);
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
    TResult? Function(String code, String message, CreateSpotDataModel? data)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSpotResponseModel() when $default != null:
        return $default(_that.code, _that.message, _that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateSpotResponseModel extends CreateSpotResponseModel {
  const _CreateSpotResponseModel(
      {required this.code, required this.message, this.data})
      : super._();
  factory _CreateSpotResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CreateSpotResponseModelFromJson(json);

  @override
  final String code;
  @override
  final String message;
  @override
  final CreateSpotDataModel? data;

  /// Create a copy of CreateSpotResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateSpotResponseModelCopyWith<_CreateSpotResponseModel> get copyWith =>
      __$CreateSpotResponseModelCopyWithImpl<_CreateSpotResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateSpotResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateSpotResponseModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, data);

  @override
  String toString() {
    return 'CreateSpotResponseModel(code: $code, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$CreateSpotResponseModelCopyWith<$Res>
    implements $CreateSpotResponseModelCopyWith<$Res> {
  factory _$CreateSpotResponseModelCopyWith(_CreateSpotResponseModel value,
          $Res Function(_CreateSpotResponseModel) _then) =
      __$CreateSpotResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call({String code, String message, CreateSpotDataModel? data});

  @override
  $CreateSpotDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$CreateSpotResponseModelCopyWithImpl<$Res>
    implements _$CreateSpotResponseModelCopyWith<$Res> {
  __$CreateSpotResponseModelCopyWithImpl(this._self, this._then);

  final _CreateSpotResponseModel _self;
  final $Res Function(_CreateSpotResponseModel) _then;

  /// Create a copy of CreateSpotResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_CreateSpotResponseModel(
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
              as CreateSpotDataModel?,
    ));
  }

  /// Create a copy of CreateSpotResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateSpotDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $CreateSpotDataModelCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

// dart format on
