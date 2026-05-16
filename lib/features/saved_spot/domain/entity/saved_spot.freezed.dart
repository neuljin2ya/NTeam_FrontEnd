// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_spot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SavedSpot {
  int get savedSpotId;

  /// Create a copy of SavedSpot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SavedSpotCopyWith<SavedSpot> get copyWith =>
      _$SavedSpotCopyWithImpl<SavedSpot>(this as SavedSpot, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SavedSpot &&
            (identical(other.savedSpotId, savedSpotId) ||
                other.savedSpotId == savedSpotId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, savedSpotId);

  @override
  String toString() {
    return 'SavedSpot(savedSpotId: $savedSpotId)';
  }
}

/// @nodoc
abstract mixin class $SavedSpotCopyWith<$Res> {
  factory $SavedSpotCopyWith(SavedSpot value, $Res Function(SavedSpot) _then) =
      _$SavedSpotCopyWithImpl;
  @useResult
  $Res call({int savedSpotId});
}

/// @nodoc
class _$SavedSpotCopyWithImpl<$Res> implements $SavedSpotCopyWith<$Res> {
  _$SavedSpotCopyWithImpl(this._self, this._then);

  final SavedSpot _self;
  final $Res Function(SavedSpot) _then;

  /// Create a copy of SavedSpot
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

/// Adds pattern-matching-related methods to [SavedSpot].
extension SavedSpotPatterns on SavedSpot {
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
    TResult Function(_SavedSpot value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SavedSpot() when $default != null:
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
    TResult Function(_SavedSpot value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SavedSpot():
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
    TResult? Function(_SavedSpot value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SavedSpot() when $default != null:
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
      case _SavedSpot() when $default != null:
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
      case _SavedSpot():
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
      case _SavedSpot() when $default != null:
        return $default(_that.savedSpotId);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SavedSpot implements SavedSpot {
  const _SavedSpot({required this.savedSpotId});

  @override
  final int savedSpotId;

  /// Create a copy of SavedSpot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SavedSpotCopyWith<_SavedSpot> get copyWith =>
      __$SavedSpotCopyWithImpl<_SavedSpot>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SavedSpot &&
            (identical(other.savedSpotId, savedSpotId) ||
                other.savedSpotId == savedSpotId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, savedSpotId);

  @override
  String toString() {
    return 'SavedSpot(savedSpotId: $savedSpotId)';
  }
}

/// @nodoc
abstract mixin class _$SavedSpotCopyWith<$Res>
    implements $SavedSpotCopyWith<$Res> {
  factory _$SavedSpotCopyWith(
          _SavedSpot value, $Res Function(_SavedSpot) _then) =
      __$SavedSpotCopyWithImpl;
  @override
  @useResult
  $Res call({int savedSpotId});
}

/// @nodoc
class __$SavedSpotCopyWithImpl<$Res> implements _$SavedSpotCopyWith<$Res> {
  __$SavedSpotCopyWithImpl(this._self, this._then);

  final _SavedSpot _self;
  final $Res Function(_SavedSpot) _then;

  /// Create a copy of SavedSpot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? savedSpotId = null,
  }) {
    return _then(_SavedSpot(
      savedSpotId: null == savedSpotId
          ? _self.savedSpotId
          : savedSpotId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
