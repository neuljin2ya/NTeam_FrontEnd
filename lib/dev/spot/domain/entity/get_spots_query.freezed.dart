// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_spots_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetSpotsQuery {
  String? get mainAddress;
  String? get subAddress;
  String? get difficulty;
  List<String>? get features;
  List<String>? get statuses;
  int? get spotId;

  /// Create a copy of GetSpotsQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetSpotsQueryCopyWith<GetSpotsQuery> get copyWith =>
      _$GetSpotsQueryCopyWithImpl<GetSpotsQuery>(
          this as GetSpotsQuery, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetSpotsQuery &&
            (identical(other.mainAddress, mainAddress) ||
                other.mainAddress == mainAddress) &&
            (identical(other.subAddress, subAddress) ||
                other.subAddress == subAddress) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            const DeepCollectionEquality().equals(other.features, features) &&
            const DeepCollectionEquality().equals(other.statuses, statuses) &&
            (identical(other.spotId, spotId) || other.spotId == spotId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      mainAddress,
      subAddress,
      difficulty,
      const DeepCollectionEquality().hash(features),
      const DeepCollectionEquality().hash(statuses),
      spotId);

  @override
  String toString() {
    return 'GetSpotsQuery(mainAddress: $mainAddress, subAddress: $subAddress, difficulty: $difficulty, features: $features, statuses: $statuses, spotId: $spotId)';
  }
}

/// @nodoc
abstract mixin class $GetSpotsQueryCopyWith<$Res> {
  factory $GetSpotsQueryCopyWith(
          GetSpotsQuery value, $Res Function(GetSpotsQuery) _then) =
      _$GetSpotsQueryCopyWithImpl;
  @useResult
  $Res call(
      {String? mainAddress,
      String? subAddress,
      String? difficulty,
      List<String>? features,
      List<String>? statuses,
      int? spotId});
}

/// @nodoc
class _$GetSpotsQueryCopyWithImpl<$Res>
    implements $GetSpotsQueryCopyWith<$Res> {
  _$GetSpotsQueryCopyWithImpl(this._self, this._then);

  final GetSpotsQuery _self;
  final $Res Function(GetSpotsQuery) _then;

  /// Create a copy of GetSpotsQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainAddress = freezed,
    Object? subAddress = freezed,
    Object? difficulty = freezed,
    Object? features = freezed,
    Object? statuses = freezed,
    Object? spotId = freezed,
  }) {
    return _then(_self.copyWith(
      mainAddress: freezed == mainAddress
          ? _self.mainAddress
          : mainAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      subAddress: freezed == subAddress
          ? _self.subAddress
          : subAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      difficulty: freezed == difficulty
          ? _self.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String?,
      features: freezed == features
          ? _self.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      statuses: freezed == statuses
          ? _self.statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      spotId: freezed == spotId
          ? _self.spotId
          : spotId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [GetSpotsQuery].
extension GetSpotsQueryPatterns on GetSpotsQuery {
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
    TResult Function(_GetSpotsQuery value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetSpotsQuery() when $default != null:
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
    TResult Function(_GetSpotsQuery value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetSpotsQuery():
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
    TResult? Function(_GetSpotsQuery value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetSpotsQuery() when $default != null:
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
            String? mainAddress,
            String? subAddress,
            String? difficulty,
            List<String>? features,
            List<String>? statuses,
            int? spotId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetSpotsQuery() when $default != null:
        return $default(_that.mainAddress, _that.subAddress, _that.difficulty,
            _that.features, _that.statuses, _that.spotId);
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
            String? mainAddress,
            String? subAddress,
            String? difficulty,
            List<String>? features,
            List<String>? statuses,
            int? spotId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetSpotsQuery():
        return $default(_that.mainAddress, _that.subAddress, _that.difficulty,
            _that.features, _that.statuses, _that.spotId);
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
            String? mainAddress,
            String? subAddress,
            String? difficulty,
            List<String>? features,
            List<String>? statuses,
            int? spotId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetSpotsQuery() when $default != null:
        return $default(_that.mainAddress, _that.subAddress, _that.difficulty,
            _that.features, _that.statuses, _that.spotId);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GetSpotsQuery implements GetSpotsQuery {
  const _GetSpotsQuery(
      {this.mainAddress,
      this.subAddress,
      this.difficulty,
      final List<String>? features,
      final List<String>? statuses,
      this.spotId})
      : _features = features,
        _statuses = statuses;

  @override
  final String? mainAddress;
  @override
  final String? subAddress;
  @override
  final String? difficulty;
  final List<String>? _features;
  @override
  List<String>? get features {
    final value = _features;
    if (value == null) return null;
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _statuses;
  @override
  List<String>? get statuses {
    final value = _statuses;
    if (value == null) return null;
    if (_statuses is EqualUnmodifiableListView) return _statuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? spotId;

  /// Create a copy of GetSpotsQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetSpotsQueryCopyWith<_GetSpotsQuery> get copyWith =>
      __$GetSpotsQueryCopyWithImpl<_GetSpotsQuery>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetSpotsQuery &&
            (identical(other.mainAddress, mainAddress) ||
                other.mainAddress == mainAddress) &&
            (identical(other.subAddress, subAddress) ||
                other.subAddress == subAddress) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            const DeepCollectionEquality().equals(other._features, _features) &&
            const DeepCollectionEquality().equals(other._statuses, _statuses) &&
            (identical(other.spotId, spotId) || other.spotId == spotId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      mainAddress,
      subAddress,
      difficulty,
      const DeepCollectionEquality().hash(_features),
      const DeepCollectionEquality().hash(_statuses),
      spotId);

  @override
  String toString() {
    return 'GetSpotsQuery(mainAddress: $mainAddress, subAddress: $subAddress, difficulty: $difficulty, features: $features, statuses: $statuses, spotId: $spotId)';
  }
}

/// @nodoc
abstract mixin class _$GetSpotsQueryCopyWith<$Res>
    implements $GetSpotsQueryCopyWith<$Res> {
  factory _$GetSpotsQueryCopyWith(
          _GetSpotsQuery value, $Res Function(_GetSpotsQuery) _then) =
      __$GetSpotsQueryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? mainAddress,
      String? subAddress,
      String? difficulty,
      List<String>? features,
      List<String>? statuses,
      int? spotId});
}

/// @nodoc
class __$GetSpotsQueryCopyWithImpl<$Res>
    implements _$GetSpotsQueryCopyWith<$Res> {
  __$GetSpotsQueryCopyWithImpl(this._self, this._then);

  final _GetSpotsQuery _self;
  final $Res Function(_GetSpotsQuery) _then;

  /// Create a copy of GetSpotsQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? mainAddress = freezed,
    Object? subAddress = freezed,
    Object? difficulty = freezed,
    Object? features = freezed,
    Object? statuses = freezed,
    Object? spotId = freezed,
  }) {
    return _then(_GetSpotsQuery(
      mainAddress: freezed == mainAddress
          ? _self.mainAddress
          : mainAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      subAddress: freezed == subAddress
          ? _self.subAddress
          : subAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      difficulty: freezed == difficulty
          ? _self.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String?,
      features: freezed == features
          ? _self._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      statuses: freezed == statuses
          ? _self._statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      spotId: freezed == spotId
          ? _self.spotId
          : spotId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
