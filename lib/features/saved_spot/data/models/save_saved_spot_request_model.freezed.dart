// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_saved_spot_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaveSavedSpotRequestModel {
  @JsonKey(name: 'spot_id')
  int get spotId;

  /// Create a copy of SaveSavedSpotRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SaveSavedSpotRequestModelCopyWith<SaveSavedSpotRequestModel> get copyWith =>
      _$SaveSavedSpotRequestModelCopyWithImpl<SaveSavedSpotRequestModel>(
          this as SaveSavedSpotRequestModel, _$identity);

  /// Serializes this SaveSavedSpotRequestModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveSavedSpotRequestModel &&
            (identical(other.spotId, spotId) || other.spotId == spotId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, spotId);

  @override
  String toString() {
    return 'SaveSavedSpotRequestModel(spotId: $spotId)';
  }
}

/// @nodoc
abstract mixin class $SaveSavedSpotRequestModelCopyWith<$Res> {
  factory $SaveSavedSpotRequestModelCopyWith(SaveSavedSpotRequestModel value,
          $Res Function(SaveSavedSpotRequestModel) _then) =
      _$SaveSavedSpotRequestModelCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'spot_id') int spotId});
}

/// @nodoc
class _$SaveSavedSpotRequestModelCopyWithImpl<$Res>
    implements $SaveSavedSpotRequestModelCopyWith<$Res> {
  _$SaveSavedSpotRequestModelCopyWithImpl(this._self, this._then);

  final SaveSavedSpotRequestModel _self;
  final $Res Function(SaveSavedSpotRequestModel) _then;

  /// Create a copy of SaveSavedSpotRequestModel
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

/// Adds pattern-matching-related methods to [SaveSavedSpotRequestModel].
extension SaveSavedSpotRequestModelPatterns on SaveSavedSpotRequestModel {
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
    TResult Function(_SaveSavedSpotRequestModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SaveSavedSpotRequestModel() when $default != null:
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
    TResult Function(_SaveSavedSpotRequestModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveSavedSpotRequestModel():
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
    TResult? Function(_SaveSavedSpotRequestModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveSavedSpotRequestModel() when $default != null:
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
      case _SaveSavedSpotRequestModel() when $default != null:
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
      case _SaveSavedSpotRequestModel():
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
      case _SaveSavedSpotRequestModel() when $default != null:
        return $default(_that.spotId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SaveSavedSpotRequestModel implements SaveSavedSpotRequestModel {
  const _SaveSavedSpotRequestModel(
      {@JsonKey(name: 'spot_id') required this.spotId});
  factory _SaveSavedSpotRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SaveSavedSpotRequestModelFromJson(json);

  @override
  @JsonKey(name: 'spot_id')
  final int spotId;

  /// Create a copy of SaveSavedSpotRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SaveSavedSpotRequestModelCopyWith<_SaveSavedSpotRequestModel>
      get copyWith =>
          __$SaveSavedSpotRequestModelCopyWithImpl<_SaveSavedSpotRequestModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SaveSavedSpotRequestModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveSavedSpotRequestModel &&
            (identical(other.spotId, spotId) || other.spotId == spotId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, spotId);

  @override
  String toString() {
    return 'SaveSavedSpotRequestModel(spotId: $spotId)';
  }
}

/// @nodoc
abstract mixin class _$SaveSavedSpotRequestModelCopyWith<$Res>
    implements $SaveSavedSpotRequestModelCopyWith<$Res> {
  factory _$SaveSavedSpotRequestModelCopyWith(_SaveSavedSpotRequestModel value,
          $Res Function(_SaveSavedSpotRequestModel) _then) =
      __$SaveSavedSpotRequestModelCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'spot_id') int spotId});
}

/// @nodoc
class __$SaveSavedSpotRequestModelCopyWithImpl<$Res>
    implements _$SaveSavedSpotRequestModelCopyWith<$Res> {
  __$SaveSavedSpotRequestModelCopyWithImpl(this._self, this._then);

  final _SaveSavedSpotRequestModel _self;
  final $Res Function(_SaveSavedSpotRequestModel) _then;

  /// Create a copy of SaveSavedSpotRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? spotId = null,
  }) {
    return _then(_SaveSavedSpotRequestModel(
      spotId: null == spotId
          ? _self.spotId
          : spotId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
