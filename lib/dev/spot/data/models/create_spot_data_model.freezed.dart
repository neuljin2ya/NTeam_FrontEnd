// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_spot_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateSpotDataModel {
  @JsonKey(name: 'spot_id')
  int get spotId;

  /// Create a copy of CreateSpotDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateSpotDataModelCopyWith<CreateSpotDataModel> get copyWith =>
      _$CreateSpotDataModelCopyWithImpl<CreateSpotDataModel>(
          this as CreateSpotDataModel, _$identity);

  /// Serializes this CreateSpotDataModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateSpotDataModel &&
            (identical(other.spotId, spotId) || other.spotId == spotId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, spotId);

  @override
  String toString() {
    return 'CreateSpotDataModel(spotId: $spotId)';
  }
}

/// @nodoc
abstract mixin class $CreateSpotDataModelCopyWith<$Res> {
  factory $CreateSpotDataModelCopyWith(
          CreateSpotDataModel value, $Res Function(CreateSpotDataModel) _then) =
      _$CreateSpotDataModelCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'spot_id') int spotId});
}

/// @nodoc
class _$CreateSpotDataModelCopyWithImpl<$Res>
    implements $CreateSpotDataModelCopyWith<$Res> {
  _$CreateSpotDataModelCopyWithImpl(this._self, this._then);

  final CreateSpotDataModel _self;
  final $Res Function(CreateSpotDataModel) _then;

  /// Create a copy of CreateSpotDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotId = null,
  }) {
    return _then(_self.copyWith(
      spotId: null == spotId
          ? _self.spotId
          : spotId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateSpotDataModel].
extension CreateSpotDataModelPatterns on CreateSpotDataModel {
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
    TResult Function(_CreateSpotDataModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateSpotDataModel() when $default != null:
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
    TResult Function(_CreateSpotDataModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSpotDataModel():
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
    TResult? Function(_CreateSpotDataModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSpotDataModel() when $default != null:
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
    TResult Function(@JsonKey(name: 'spot_id') int spotId)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateSpotDataModel() when $default != null:
        return $default(_that.spotId);
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
    TResult Function(@JsonKey(name: 'spot_id') int spotId) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSpotDataModel():
        return $default(_that.spotId);
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
    TResult? Function(@JsonKey(name: 'spot_id') int spotId)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSpotDataModel() when $default != null:
        return $default(_that.spotId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateSpotDataModel implements CreateSpotDataModel {
  const _CreateSpotDataModel({@JsonKey(name: 'spot_id') required this.spotId});
  factory _CreateSpotDataModel.fromJson(Map<String, dynamic> json) =>
      _$CreateSpotDataModelFromJson(json);

  @override
  @JsonKey(name: 'spot_id')
  final int spotId;

  /// Create a copy of CreateSpotDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateSpotDataModelCopyWith<_CreateSpotDataModel> get copyWith =>
      __$CreateSpotDataModelCopyWithImpl<_CreateSpotDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateSpotDataModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateSpotDataModel &&
            (identical(other.spotId, spotId) || other.spotId == spotId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, spotId);

  @override
  String toString() {
    return 'CreateSpotDataModel(spotId: $spotId)';
  }
}

/// @nodoc
abstract mixin class _$CreateSpotDataModelCopyWith<$Res>
    implements $CreateSpotDataModelCopyWith<$Res> {
  factory _$CreateSpotDataModelCopyWith(_CreateSpotDataModel value,
          $Res Function(_CreateSpotDataModel) _then) =
      __$CreateSpotDataModelCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'spot_id') int spotId});
}

/// @nodoc
class __$CreateSpotDataModelCopyWithImpl<$Res>
    implements _$CreateSpotDataModelCopyWith<$Res> {
  __$CreateSpotDataModelCopyWithImpl(this._self, this._then);

  final _CreateSpotDataModel _self;
  final $Res Function(_CreateSpotDataModel) _then;

  /// Create a copy of CreateSpotDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? spotId = null,
  }) {
    return _then(_CreateSpotDataModel(
      spotId: null == spotId
          ? _self.spotId
          : spotId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
