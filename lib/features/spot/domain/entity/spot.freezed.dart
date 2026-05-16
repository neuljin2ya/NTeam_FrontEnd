// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Spot {
  int get spotId;
  String get name;
  String get captionImgUrl;
  double get latitude;
  double get longitude;
  String get mainAddress;
  String get subAddress;
  String get difficulty;
  String get description;
  List<String> get features;
  List<SpotStatusList> get statusList;
  DateTime get createdAt;

  /// Create a copy of Spot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpotCopyWith<Spot> get copyWith =>
      _$SpotCopyWithImpl<Spot>(this as Spot, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Spot &&
            (identical(other.spotId, spotId) || other.spotId == spotId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.captionImgUrl, captionImgUrl) ||
                other.captionImgUrl == captionImgUrl) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.mainAddress, mainAddress) ||
                other.mainAddress == mainAddress) &&
            (identical(other.subAddress, subAddress) ||
                other.subAddress == subAddress) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.features, features) &&
            const DeepCollectionEquality()
                .equals(other.statusList, statusList) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      spotId,
      name,
      captionImgUrl,
      latitude,
      longitude,
      mainAddress,
      subAddress,
      difficulty,
      description,
      const DeepCollectionEquality().hash(features),
      const DeepCollectionEquality().hash(statusList),
      createdAt);

  @override
  String toString() {
    return 'Spot(spotId: $spotId, name: $name, captionImgUrl: $captionImgUrl, latitude: $latitude, longitude: $longitude, mainAddress: $mainAddress, subAddress: $subAddress, difficulty: $difficulty, description: $description, features: $features, statusList: $statusList, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $SpotCopyWith<$Res> {
  factory $SpotCopyWith(Spot value, $Res Function(Spot) _then) =
      _$SpotCopyWithImpl;
  @useResult
  $Res call(
      {int spotId,
      String name,
      String captionImgUrl,
      double latitude,
      double longitude,
      String mainAddress,
      String subAddress,
      String difficulty,
      String description,
      List<String> features,
      List<SpotStatusList> statusList,
      DateTime createdAt});
}

/// @nodoc
class _$SpotCopyWithImpl<$Res> implements $SpotCopyWith<$Res> {
  _$SpotCopyWithImpl(this._self, this._then);

  final Spot _self;
  final $Res Function(Spot) _then;

  /// Create a copy of Spot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotId = null,
    Object? name = null,
    Object? captionImgUrl = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? mainAddress = null,
    Object? subAddress = null,
    Object? difficulty = null,
    Object? description = null,
    Object? features = null,
    Object? statusList = null,
    Object? createdAt = null,
  }) {
    return _then(_self.copyWith(
      spotId: null == spotId
          ? _self.spotId
          : spotId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      captionImgUrl: null == captionImgUrl
          ? _self.captionImgUrl
          : captionImgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      mainAddress: null == mainAddress
          ? _self.mainAddress
          : mainAddress // ignore: cast_nullable_to_non_nullable
              as String,
      subAddress: null == subAddress
          ? _self.subAddress
          : subAddress // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _self.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      features: null == features
          ? _self.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
      statusList: null == statusList
          ? _self.statusList
          : statusList // ignore: cast_nullable_to_non_nullable
              as List<SpotStatusList>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [Spot].
extension SpotPatterns on Spot {
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
    TResult Function(_Spot value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Spot() when $default != null:
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
    TResult Function(_Spot value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Spot():
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
    TResult? Function(_Spot value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Spot() when $default != null:
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
            int spotId,
            String name,
            String captionImgUrl,
            double latitude,
            double longitude,
            String mainAddress,
            String subAddress,
            String difficulty,
            String description,
            List<String> features,
            List<SpotStatusList> statusList,
            DateTime createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Spot() when $default != null:
        return $default(
            _that.spotId,
            _that.name,
            _that.captionImgUrl,
            _that.latitude,
            _that.longitude,
            _that.mainAddress,
            _that.subAddress,
            _that.difficulty,
            _that.description,
            _that.features,
            _that.statusList,
            _that.createdAt);
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
            int spotId,
            String name,
            String captionImgUrl,
            double latitude,
            double longitude,
            String mainAddress,
            String subAddress,
            String difficulty,
            String description,
            List<String> features,
            List<SpotStatusList> statusList,
            DateTime createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Spot():
        return $default(
            _that.spotId,
            _that.name,
            _that.captionImgUrl,
            _that.latitude,
            _that.longitude,
            _that.mainAddress,
            _that.subAddress,
            _that.difficulty,
            _that.description,
            _that.features,
            _that.statusList,
            _that.createdAt);
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
            int spotId,
            String name,
            String captionImgUrl,
            double latitude,
            double longitude,
            String mainAddress,
            String subAddress,
            String difficulty,
            String description,
            List<String> features,
            List<SpotStatusList> statusList,
            DateTime createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Spot() when $default != null:
        return $default(
            _that.spotId,
            _that.name,
            _that.captionImgUrl,
            _that.latitude,
            _that.longitude,
            _that.mainAddress,
            _that.subAddress,
            _that.difficulty,
            _that.description,
            _that.features,
            _that.statusList,
            _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Spot extends Spot {
  const _Spot(
      {required this.spotId,
      required this.name,
      required this.captionImgUrl,
      required this.latitude,
      required this.longitude,
      required this.mainAddress,
      required this.subAddress,
      required this.difficulty,
      required this.description,
      final List<String> features = const <String>[],
      final List<SpotStatusList> statusList = const <SpotStatusList>[],
      required this.createdAt})
      : _features = features,
        _statusList = statusList,
        super._();

  @override
  final int spotId;
  @override
  final String name;
  @override
  final String captionImgUrl;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String mainAddress;
  @override
  final String subAddress;
  @override
  final String difficulty;
  @override
  final String description;
  final List<String> _features;
  @override
  @JsonKey()
  List<String> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
  }

  final List<SpotStatusList> _statusList;
  @override
  @JsonKey()
  List<SpotStatusList> get statusList {
    if (_statusList is EqualUnmodifiableListView) return _statusList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statusList);
  }

  @override
  final DateTime createdAt;

  /// Create a copy of Spot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SpotCopyWith<_Spot> get copyWith =>
      __$SpotCopyWithImpl<_Spot>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Spot &&
            (identical(other.spotId, spotId) || other.spotId == spotId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.captionImgUrl, captionImgUrl) ||
                other.captionImgUrl == captionImgUrl) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.mainAddress, mainAddress) ||
                other.mainAddress == mainAddress) &&
            (identical(other.subAddress, subAddress) ||
                other.subAddress == subAddress) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._features, _features) &&
            const DeepCollectionEquality()
                .equals(other._statusList, _statusList) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      spotId,
      name,
      captionImgUrl,
      latitude,
      longitude,
      mainAddress,
      subAddress,
      difficulty,
      description,
      const DeepCollectionEquality().hash(_features),
      const DeepCollectionEquality().hash(_statusList),
      createdAt);

  @override
  String toString() {
    return 'Spot(spotId: $spotId, name: $name, captionImgUrl: $captionImgUrl, latitude: $latitude, longitude: $longitude, mainAddress: $mainAddress, subAddress: $subAddress, difficulty: $difficulty, description: $description, features: $features, statusList: $statusList, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$SpotCopyWith<$Res> implements $SpotCopyWith<$Res> {
  factory _$SpotCopyWith(_Spot value, $Res Function(_Spot) _then) =
      __$SpotCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int spotId,
      String name,
      String captionImgUrl,
      double latitude,
      double longitude,
      String mainAddress,
      String subAddress,
      String difficulty,
      String description,
      List<String> features,
      List<SpotStatusList> statusList,
      DateTime createdAt});
}

/// @nodoc
class __$SpotCopyWithImpl<$Res> implements _$SpotCopyWith<$Res> {
  __$SpotCopyWithImpl(this._self, this._then);

  final _Spot _self;
  final $Res Function(_Spot) _then;

  /// Create a copy of Spot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? spotId = null,
    Object? name = null,
    Object? captionImgUrl = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? mainAddress = null,
    Object? subAddress = null,
    Object? difficulty = null,
    Object? description = null,
    Object? features = null,
    Object? statusList = null,
    Object? createdAt = null,
  }) {
    return _then(_Spot(
      spotId: null == spotId
          ? _self.spotId
          : spotId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      captionImgUrl: null == captionImgUrl
          ? _self.captionImgUrl
          : captionImgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      mainAddress: null == mainAddress
          ? _self.mainAddress
          : mainAddress // ignore: cast_nullable_to_non_nullable
              as String,
      subAddress: null == subAddress
          ? _self.subAddress
          : subAddress // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _self.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      features: null == features
          ? _self._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
      statusList: null == statusList
          ? _self._statusList
          : statusList // ignore: cast_nullable_to_non_nullable
              as List<SpotStatusList>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
