// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_spot_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SavedSpotResultModel {
  int get savedSpotId;

  /// Create a copy of SavedSpotResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SavedSpotResultModelCopyWith<SavedSpotResultModel> get copyWith =>
      _$SavedSpotResultModelCopyWithImpl<SavedSpotResultModel>(
          this as SavedSpotResultModel, _$identity);

  /// Serializes this SavedSpotResultModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SavedSpotResultModel &&
            (identical(other.savedSpotId, savedSpotId) ||
                other.savedSpotId == savedSpotId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, savedSpotId);

  @override
  String toString() {
    return 'SavedSpotResultModel(savedSpotId: $savedSpotId)';
  }
}

/// @nodoc
abstract mixin class $SavedSpotResultModelCopyWith<$Res> {
  factory $SavedSpotResultModelCopyWith(SavedSpotResultModel value,
          $Res Function(SavedSpotResultModel) _then) =
      _$SavedSpotResultModelCopyWithImpl;
  @useResult
  $Res call({int savedSpotId});
}

/// @nodoc
class _$SavedSpotResultModelCopyWithImpl<$Res>
    implements $SavedSpotResultModelCopyWith<$Res> {
  _$SavedSpotResultModelCopyWithImpl(this._self, this._then);

  final SavedSpotResultModel _self;
  final $Res Function(SavedSpotResultModel) _then;

  /// Create a copy of SavedSpotResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savedSpotId = null,
  }) {
    return _then(_self.copyWith(
      savedSpotId: null == savedSpotId
          ? _self.savedSpotId
          : savedSpotId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [SavedSpotResultModel].
extension SavedSpotResultModelPatterns on SavedSpotResultModel {
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
    TResult Function(_SavedSpotResultModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SavedSpotResultModel() when $default != null:
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
    TResult Function(_SavedSpotResultModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SavedSpotResultModel():
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
    TResult? Function(_SavedSpotResultModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SavedSpotResultModel() when $default != null:
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
    TResult Function(int savedSpotId)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SavedSpotResultModel() when $default != null:
        return $default(_that.savedSpotId);
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
    TResult Function(int savedSpotId) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SavedSpotResultModel():
        return $default(_that.savedSpotId);
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
    TResult? Function(int savedSpotId)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SavedSpotResultModel() when $default != null:
        return $default(_that.savedSpotId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SavedSpotResultModel implements SavedSpotResultModel {
  const _SavedSpotResultModel({required this.savedSpotId});
  factory _SavedSpotResultModel.fromJson(Map<String, dynamic> json) =>
      _$SavedSpotResultModelFromJson(json);

  @override
  final int savedSpotId;

  /// Create a copy of SavedSpotResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SavedSpotResultModelCopyWith<_SavedSpotResultModel> get copyWith =>
      __$SavedSpotResultModelCopyWithImpl<_SavedSpotResultModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SavedSpotResultModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SavedSpotResultModel &&
            (identical(other.savedSpotId, savedSpotId) ||
                other.savedSpotId == savedSpotId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, savedSpotId);

  @override
  String toString() {
    return 'SavedSpotResultModel(savedSpotId: $savedSpotId)';
  }
}

/// @nodoc
abstract mixin class _$SavedSpotResultModelCopyWith<$Res>
    implements $SavedSpotResultModelCopyWith<$Res> {
  factory _$SavedSpotResultModelCopyWith(_SavedSpotResultModel value,
          $Res Function(_SavedSpotResultModel) _then) =
      __$SavedSpotResultModelCopyWithImpl;
  @override
  @useResult
  $Res call({int savedSpotId});
}

/// @nodoc
class __$SavedSpotResultModelCopyWithImpl<$Res>
    implements _$SavedSpotResultModelCopyWith<$Res> {
  __$SavedSpotResultModelCopyWithImpl(this._self, this._then);

  final _SavedSpotResultModel _self;
  final $Res Function(_SavedSpotResultModel) _then;

  /// Create a copy of SavedSpotResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? savedSpotId = null,
  }) {
    return _then(_SavedSpotResultModel(
      savedSpotId: null == savedSpotId
          ? _self.savedSpotId
          : savedSpotId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
