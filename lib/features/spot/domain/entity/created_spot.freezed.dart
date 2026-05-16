// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'created_spot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatedSpot {
  int get spotId;

  /// Create a copy of CreatedSpot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreatedSpotCopyWith<CreatedSpot> get copyWith =>
      _$CreatedSpotCopyWithImpl<CreatedSpot>(this as CreatedSpot, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreatedSpot &&
            (identical(other.spotId, spotId) || other.spotId == spotId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, spotId);

  @override
  String toString() {
    return 'CreatedSpot(spotId: $spotId)';
  }
}

/// @nodoc
abstract mixin class $CreatedSpotCopyWith<$Res> {
  factory $CreatedSpotCopyWith(
          CreatedSpot value, $Res Function(CreatedSpot) _then) =
      _$CreatedSpotCopyWithImpl;
  @useResult
  $Res call({int spotId});
}

/// @nodoc
class _$CreatedSpotCopyWithImpl<$Res> implements $CreatedSpotCopyWith<$Res> {
  _$CreatedSpotCopyWithImpl(this._self, this._then);

  final CreatedSpot _self;
  final $Res Function(CreatedSpot) _then;

  /// Create a copy of CreatedSpot
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

/// Adds pattern-matching-related methods to [CreatedSpot].
extension CreatedSpotPatterns on CreatedSpot {
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
    TResult Function(_CreatedSpot value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatedSpot() when $default != null:
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
    TResult Function(_CreatedSpot value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatedSpot():
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
    TResult? Function(_CreatedSpot value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatedSpot() when $default != null:
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
    TResult Function(int spotId)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatedSpot() when $default != null:
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
    TResult Function(int spotId) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatedSpot():
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
    TResult? Function(int spotId)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatedSpot() when $default != null:
        return $default(_that.spotId);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CreatedSpot implements CreatedSpot {
  const _CreatedSpot({required this.spotId});

  @override
  final int spotId;

  /// Create a copy of CreatedSpot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreatedSpotCopyWith<_CreatedSpot> get copyWith =>
      __$CreatedSpotCopyWithImpl<_CreatedSpot>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreatedSpot &&
            (identical(other.spotId, spotId) || other.spotId == spotId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, spotId);

  @override
  String toString() {
    return 'CreatedSpot(spotId: $spotId)';
  }
}

/// @nodoc
abstract mixin class _$CreatedSpotCopyWith<$Res>
    implements $CreatedSpotCopyWith<$Res> {
  factory _$CreatedSpotCopyWith(
          _CreatedSpot value, $Res Function(_CreatedSpot) _then) =
      __$CreatedSpotCopyWithImpl;
  @override
  @useResult
  $Res call({int spotId});
}

/// @nodoc
class __$CreatedSpotCopyWithImpl<$Res> implements _$CreatedSpotCopyWith<$Res> {
  __$CreatedSpotCopyWithImpl(this._self, this._then);

  final _CreatedSpot _self;
  final $Res Function(_CreatedSpot) _then;

  /// Create a copy of CreatedSpot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? spotId = null,
  }) {
    return _then(_CreatedSpot(
      spotId: null == spotId
          ? _self.spotId
          : spotId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
