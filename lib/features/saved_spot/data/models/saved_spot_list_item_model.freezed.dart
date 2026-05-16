// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_spot_list_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SavedSpotListItemModel {
  int get savedSpotId;
  SpotModel get spot;

  /// Create a copy of SavedSpotListItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SavedSpotListItemModelCopyWith<SavedSpotListItemModel> get copyWith =>
      _$SavedSpotListItemModelCopyWithImpl<SavedSpotListItemModel>(
          this as SavedSpotListItemModel, _$identity);

  /// Serializes this SavedSpotListItemModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SavedSpotListItemModel &&
            (identical(other.savedSpotId, savedSpotId) ||
                other.savedSpotId == savedSpotId) &&
            (identical(other.spot, spot) || other.spot == spot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, savedSpotId, spot);

  @override
  String toString() {
    return 'SavedSpotListItemModel(savedSpotId: $savedSpotId, spot: $spot)';
  }
}

/// @nodoc
abstract mixin class $SavedSpotListItemModelCopyWith<$Res> {
  factory $SavedSpotListItemModelCopyWith(SavedSpotListItemModel value,
          $Res Function(SavedSpotListItemModel) _then) =
      _$SavedSpotListItemModelCopyWithImpl;
  @useResult
  $Res call({int savedSpotId, SpotModel spot});

  $SpotModelCopyWith<$Res> get spot;
}

/// @nodoc
class _$SavedSpotListItemModelCopyWithImpl<$Res>
    implements $SavedSpotListItemModelCopyWith<$Res> {
  _$SavedSpotListItemModelCopyWithImpl(this._self, this._then);

  final SavedSpotListItemModel _self;
  final $Res Function(SavedSpotListItemModel) _then;

  /// Create a copy of SavedSpotListItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savedSpotId = null,
    Object? spot = null,
  }) {
    return _then(_self.copyWith(
      savedSpotId: null == savedSpotId
          ? _self.savedSpotId
          : savedSpotId // ignore: cast_nullable_to_non_nullable
              as int,
      spot: null == spot
          ? _self.spot
          : spot // ignore: cast_nullable_to_non_nullable
              as SpotModel,
    ));
  }

  /// Create a copy of SavedSpotListItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpotModelCopyWith<$Res> get spot {
    return $SpotModelCopyWith<$Res>(_self.spot, (value) {
      return _then(_self.copyWith(spot: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SavedSpotListItemModel].
extension SavedSpotListItemModelPatterns on SavedSpotListItemModel {
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
    TResult Function(_SavedSpotListItemModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SavedSpotListItemModel() when $default != null:
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
    TResult Function(_SavedSpotListItemModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SavedSpotListItemModel():
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
    TResult? Function(_SavedSpotListItemModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SavedSpotListItemModel() when $default != null:
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
    TResult Function(int savedSpotId, SpotModel spot)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SavedSpotListItemModel() when $default != null:
        return $default(_that.savedSpotId, _that.spot);
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
    TResult Function(int savedSpotId, SpotModel spot) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SavedSpotListItemModel():
        return $default(_that.savedSpotId, _that.spot);
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
    TResult? Function(int savedSpotId, SpotModel spot)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SavedSpotListItemModel() when $default != null:
        return $default(_that.savedSpotId, _that.spot);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SavedSpotListItemModel implements SavedSpotListItemModel {
  const _SavedSpotListItemModel(
      {required this.savedSpotId, required this.spot});
  factory _SavedSpotListItemModel.fromJson(Map<String, dynamic> json) =>
      _$SavedSpotListItemModelFromJson(json);

  @override
  final int savedSpotId;
  @override
  final SpotModel spot;

  /// Create a copy of SavedSpotListItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SavedSpotListItemModelCopyWith<_SavedSpotListItemModel> get copyWith =>
      __$SavedSpotListItemModelCopyWithImpl<_SavedSpotListItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SavedSpotListItemModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SavedSpotListItemModel &&
            (identical(other.savedSpotId, savedSpotId) ||
                other.savedSpotId == savedSpotId) &&
            (identical(other.spot, spot) || other.spot == spot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, savedSpotId, spot);

  @override
  String toString() {
    return 'SavedSpotListItemModel(savedSpotId: $savedSpotId, spot: $spot)';
  }
}

/// @nodoc
abstract mixin class _$SavedSpotListItemModelCopyWith<$Res>
    implements $SavedSpotListItemModelCopyWith<$Res> {
  factory _$SavedSpotListItemModelCopyWith(_SavedSpotListItemModel value,
          $Res Function(_SavedSpotListItemModel) _then) =
      __$SavedSpotListItemModelCopyWithImpl;
  @override
  @useResult
  $Res call({int savedSpotId, SpotModel spot});

  @override
  $SpotModelCopyWith<$Res> get spot;
}

/// @nodoc
class __$SavedSpotListItemModelCopyWithImpl<$Res>
    implements _$SavedSpotListItemModelCopyWith<$Res> {
  __$SavedSpotListItemModelCopyWithImpl(this._self, this._then);

  final _SavedSpotListItemModel _self;
  final $Res Function(_SavedSpotListItemModel) _then;

  /// Create a copy of SavedSpotListItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? savedSpotId = null,
    Object? spot = null,
  }) {
    return _then(_SavedSpotListItemModel(
      savedSpotId: null == savedSpotId
          ? _self.savedSpotId
          : savedSpotId // ignore: cast_nullable_to_non_nullable
              as int,
      spot: null == spot
          ? _self.spot
          : spot // ignore: cast_nullable_to_non_nullable
              as SpotModel,
    ));
  }

  /// Create a copy of SavedSpotListItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpotModelCopyWith<$Res> get spot {
    return $SpotModelCopyWith<$Res>(_self.spot, (value) {
      return _then(_self.copyWith(spot: value));
    });
  }
}

// dart format on
