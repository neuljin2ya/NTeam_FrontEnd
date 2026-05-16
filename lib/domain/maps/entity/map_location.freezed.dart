// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MapLocation {
  double get latitude;
  double get longitude;
  String get roadAddress;
  String get jibunAddress;
  String get englishAddress;
  String get buildingName;
  double? get distanceMeters;

  /// Create a copy of MapLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MapLocationCopyWith<MapLocation> get copyWith =>
      _$MapLocationCopyWithImpl<MapLocation>(this as MapLocation, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MapLocation &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.roadAddress, roadAddress) ||
                other.roadAddress == roadAddress) &&
            (identical(other.jibunAddress, jibunAddress) ||
                other.jibunAddress == jibunAddress) &&
            (identical(other.englishAddress, englishAddress) ||
                other.englishAddress == englishAddress) &&
            (identical(other.buildingName, buildingName) ||
                other.buildingName == buildingName) &&
            (identical(other.distanceMeters, distanceMeters) ||
                other.distanceMeters == distanceMeters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, roadAddress,
      jibunAddress, englishAddress, buildingName, distanceMeters);

  @override
  String toString() {
    return 'MapLocation(latitude: $latitude, longitude: $longitude, roadAddress: $roadAddress, jibunAddress: $jibunAddress, englishAddress: $englishAddress, buildingName: $buildingName, distanceMeters: $distanceMeters)';
  }
}

/// @nodoc
abstract mixin class $MapLocationCopyWith<$Res> {
  factory $MapLocationCopyWith(
          MapLocation value, $Res Function(MapLocation) _then) =
      _$MapLocationCopyWithImpl;
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      String roadAddress,
      String jibunAddress,
      String englishAddress,
      String buildingName,
      double? distanceMeters});
}

/// @nodoc
class _$MapLocationCopyWithImpl<$Res> implements $MapLocationCopyWith<$Res> {
  _$MapLocationCopyWithImpl(this._self, this._then);

  final MapLocation _self;
  final $Res Function(MapLocation) _then;

  /// Create a copy of MapLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? roadAddress = null,
    Object? jibunAddress = null,
    Object? englishAddress = null,
    Object? buildingName = null,
    Object? distanceMeters = freezed,
  }) {
    return _then(_self.copyWith(
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      roadAddress: null == roadAddress
          ? _self.roadAddress
          : roadAddress // ignore: cast_nullable_to_non_nullable
              as String,
      jibunAddress: null == jibunAddress
          ? _self.jibunAddress
          : jibunAddress // ignore: cast_nullable_to_non_nullable
              as String,
      englishAddress: null == englishAddress
          ? _self.englishAddress
          : englishAddress // ignore: cast_nullable_to_non_nullable
              as String,
      buildingName: null == buildingName
          ? _self.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String,
      distanceMeters: freezed == distanceMeters
          ? _self.distanceMeters
          : distanceMeters // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// Adds pattern-matching-related methods to [MapLocation].
extension MapLocationPatterns on MapLocation {
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
    TResult Function(_MapLocation value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MapLocation() when $default != null:
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
    TResult Function(_MapLocation value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MapLocation():
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
    TResult? Function(_MapLocation value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MapLocation() when $default != null:
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
            double latitude,
            double longitude,
            String roadAddress,
            String jibunAddress,
            String englishAddress,
            String buildingName,
            double? distanceMeters)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MapLocation() when $default != null:
        return $default(
            _that.latitude,
            _that.longitude,
            _that.roadAddress,
            _that.jibunAddress,
            _that.englishAddress,
            _that.buildingName,
            _that.distanceMeters);
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
            double latitude,
            double longitude,
            String roadAddress,
            String jibunAddress,
            String englishAddress,
            String buildingName,
            double? distanceMeters)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MapLocation():
        return $default(
            _that.latitude,
            _that.longitude,
            _that.roadAddress,
            _that.jibunAddress,
            _that.englishAddress,
            _that.buildingName,
            _that.distanceMeters);
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
            double latitude,
            double longitude,
            String roadAddress,
            String jibunAddress,
            String englishAddress,
            String buildingName,
            double? distanceMeters)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MapLocation() when $default != null:
        return $default(
            _that.latitude,
            _that.longitude,
            _that.roadAddress,
            _that.jibunAddress,
            _that.englishAddress,
            _that.buildingName,
            _that.distanceMeters);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MapLocation extends MapLocation {
  const _MapLocation(
      {required this.latitude,
      required this.longitude,
      this.roadAddress = '',
      this.jibunAddress = '',
      this.englishAddress = '',
      this.buildingName = '',
      this.distanceMeters})
      : super._();

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  @JsonKey()
  final String roadAddress;
  @override
  @JsonKey()
  final String jibunAddress;
  @override
  @JsonKey()
  final String englishAddress;
  @override
  @JsonKey()
  final String buildingName;
  @override
  final double? distanceMeters;

  /// Create a copy of MapLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MapLocationCopyWith<_MapLocation> get copyWith =>
      __$MapLocationCopyWithImpl<_MapLocation>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MapLocation &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.roadAddress, roadAddress) ||
                other.roadAddress == roadAddress) &&
            (identical(other.jibunAddress, jibunAddress) ||
                other.jibunAddress == jibunAddress) &&
            (identical(other.englishAddress, englishAddress) ||
                other.englishAddress == englishAddress) &&
            (identical(other.buildingName, buildingName) ||
                other.buildingName == buildingName) &&
            (identical(other.distanceMeters, distanceMeters) ||
                other.distanceMeters == distanceMeters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, roadAddress,
      jibunAddress, englishAddress, buildingName, distanceMeters);

  @override
  String toString() {
    return 'MapLocation(latitude: $latitude, longitude: $longitude, roadAddress: $roadAddress, jibunAddress: $jibunAddress, englishAddress: $englishAddress, buildingName: $buildingName, distanceMeters: $distanceMeters)';
  }
}

/// @nodoc
abstract mixin class _$MapLocationCopyWith<$Res>
    implements $MapLocationCopyWith<$Res> {
  factory _$MapLocationCopyWith(
          _MapLocation value, $Res Function(_MapLocation) _then) =
      __$MapLocationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      String roadAddress,
      String jibunAddress,
      String englishAddress,
      String buildingName,
      double? distanceMeters});
}

/// @nodoc
class __$MapLocationCopyWithImpl<$Res> implements _$MapLocationCopyWith<$Res> {
  __$MapLocationCopyWithImpl(this._self, this._then);

  final _MapLocation _self;
  final $Res Function(_MapLocation) _then;

  /// Create a copy of MapLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? roadAddress = null,
    Object? jibunAddress = null,
    Object? englishAddress = null,
    Object? buildingName = null,
    Object? distanceMeters = freezed,
  }) {
    return _then(_MapLocation(
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      roadAddress: null == roadAddress
          ? _self.roadAddress
          : roadAddress // ignore: cast_nullable_to_non_nullable
              as String,
      jibunAddress: null == jibunAddress
          ? _self.jibunAddress
          : jibunAddress // ignore: cast_nullable_to_non_nullable
              as String,
      englishAddress: null == englishAddress
          ? _self.englishAddress
          : englishAddress // ignore: cast_nullable_to_non_nullable
              as String,
      buildingName: null == buildingName
          ? _self.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String,
      distanceMeters: freezed == distanceMeters
          ? _self.distanceMeters
          : distanceMeters // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

// dart format on
