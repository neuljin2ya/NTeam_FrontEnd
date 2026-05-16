// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spot_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpotModel {
  @FlexibleIntConverter()
  int get spotId;
  String get name;
  @JsonKey(defaultValue: '')
  String get captionImgUrl;
  @FlexibleDoubleConverter()
  double get latitude;
  @FlexibleDoubleConverter()
  double get longitude;
  String get mainAddress;
  String get subAddress;
  String get difficulty;
  @JsonKey(defaultValue: '')
  String get description;
  List<String> get features;
  @FlexibleSpotStatusListConverter()
  List<SpotStatusListModel> get statusList;
  @FlexibleDateTimeConverter()
  DateTime get createdAt;

  /// Create a copy of SpotModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpotModelCopyWith<SpotModel> get copyWith =>
      _$SpotModelCopyWithImpl<SpotModel>(this as SpotModel, _$identity);

  /// Serializes this SpotModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpotModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    return 'SpotModel(spotId: $spotId, name: $name, captionImgUrl: $captionImgUrl, latitude: $latitude, longitude: $longitude, mainAddress: $mainAddress, subAddress: $subAddress, difficulty: $difficulty, description: $description, features: $features, statusList: $statusList, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $SpotModelCopyWith<$Res> {
  factory $SpotModelCopyWith(SpotModel value, $Res Function(SpotModel) _then) =
      _$SpotModelCopyWithImpl;
  @useResult
  $Res call(
      {@FlexibleIntConverter() int spotId,
      String name,
      @JsonKey(defaultValue: '') String captionImgUrl,
      @FlexibleDoubleConverter() double latitude,
      @FlexibleDoubleConverter() double longitude,
      String mainAddress,
      String subAddress,
      String difficulty,
      @JsonKey(defaultValue: '') String description,
      List<String> features,
      @FlexibleSpotStatusListConverter() List<SpotStatusListModel> statusList,
      @FlexibleDateTimeConverter() DateTime createdAt});
}

/// @nodoc
class _$SpotModelCopyWithImpl<$Res> implements $SpotModelCopyWith<$Res> {
  _$SpotModelCopyWithImpl(this._self, this._then);

  final SpotModel _self;
  final $Res Function(SpotModel) _then;

  /// Create a copy of SpotModel
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
              as List<SpotStatusListModel>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [SpotModel].
extension SpotModelPatterns on SpotModel {
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
    TResult Function(_SpotModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SpotModel() when $default != null:
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
    TResult Function(_SpotModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpotModel():
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
    TResult? Function(_SpotModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpotModel() when $default != null:
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
            @FlexibleIntConverter() int spotId,
            String name,
            @JsonKey(defaultValue: '') String captionImgUrl,
            @FlexibleDoubleConverter() double latitude,
            @FlexibleDoubleConverter() double longitude,
            String mainAddress,
            String subAddress,
            String difficulty,
            @JsonKey(defaultValue: '') String description,
            List<String> features,
            @FlexibleSpotStatusListConverter()
            List<SpotStatusListModel> statusList,
            @FlexibleDateTimeConverter() DateTime createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SpotModel() when $default != null:
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
            @FlexibleIntConverter() int spotId,
            String name,
            @JsonKey(defaultValue: '') String captionImgUrl,
            @FlexibleDoubleConverter() double latitude,
            @FlexibleDoubleConverter() double longitude,
            String mainAddress,
            String subAddress,
            String difficulty,
            @JsonKey(defaultValue: '') String description,
            List<String> features,
            @FlexibleSpotStatusListConverter()
            List<SpotStatusListModel> statusList,
            @FlexibleDateTimeConverter() DateTime createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpotModel():
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
            @FlexibleIntConverter() int spotId,
            String name,
            @JsonKey(defaultValue: '') String captionImgUrl,
            @FlexibleDoubleConverter() double latitude,
            @FlexibleDoubleConverter() double longitude,
            String mainAddress,
            String subAddress,
            String difficulty,
            @JsonKey(defaultValue: '') String description,
            List<String> features,
            @FlexibleSpotStatusListConverter()
            List<SpotStatusListModel> statusList,
            @FlexibleDateTimeConverter() DateTime createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpotModel() when $default != null:
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
@JsonSerializable()
class _SpotModel implements SpotModel {
  const _SpotModel(
      {@FlexibleIntConverter() required this.spotId,
      required this.name,
      @JsonKey(defaultValue: '') this.captionImgUrl = '',
      @FlexibleDoubleConverter() required this.latitude,
      @FlexibleDoubleConverter() required this.longitude,
      required this.mainAddress,
      required this.subAddress,
      required this.difficulty,
      @JsonKey(defaultValue: '') this.description = '',
      final List<String> features = const <String>[],
      @FlexibleSpotStatusListConverter()
      final List<SpotStatusListModel> statusList =
          const <SpotStatusListModel>[],
      @FlexibleDateTimeConverter() required this.createdAt})
      : _features = features,
        _statusList = statusList;
  factory _SpotModel.fromJson(Map<String, dynamic> json) =>
      _$SpotModelFromJson(json);

  @override
  @FlexibleIntConverter()
  final int spotId;
  @override
  final String name;
  @override
  @JsonKey(defaultValue: '')
  final String captionImgUrl;
  @override
  @FlexibleDoubleConverter()
  final double latitude;
  @override
  @FlexibleDoubleConverter()
  final double longitude;
  @override
  final String mainAddress;
  @override
  final String subAddress;
  @override
  final String difficulty;
  @override
  @JsonKey(defaultValue: '')
  final String description;
  final List<String> _features;
  @override
  @JsonKey()
  List<String> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
  }

  final List<SpotStatusListModel> _statusList;
  @override
  @JsonKey()
  @FlexibleSpotStatusListConverter()
  List<SpotStatusListModel> get statusList {
    if (_statusList is EqualUnmodifiableListView) return _statusList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statusList);
  }

  @override
  @FlexibleDateTimeConverter()
  final DateTime createdAt;

  /// Create a copy of SpotModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SpotModelCopyWith<_SpotModel> get copyWith =>
      __$SpotModelCopyWithImpl<_SpotModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SpotModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpotModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    return 'SpotModel(spotId: $spotId, name: $name, captionImgUrl: $captionImgUrl, latitude: $latitude, longitude: $longitude, mainAddress: $mainAddress, subAddress: $subAddress, difficulty: $difficulty, description: $description, features: $features, statusList: $statusList, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$SpotModelCopyWith<$Res>
    implements $SpotModelCopyWith<$Res> {
  factory _$SpotModelCopyWith(
          _SpotModel value, $Res Function(_SpotModel) _then) =
      __$SpotModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@FlexibleIntConverter() int spotId,
      String name,
      @JsonKey(defaultValue: '') String captionImgUrl,
      @FlexibleDoubleConverter() double latitude,
      @FlexibleDoubleConverter() double longitude,
      String mainAddress,
      String subAddress,
      String difficulty,
      @JsonKey(defaultValue: '') String description,
      List<String> features,
      @FlexibleSpotStatusListConverter() List<SpotStatusListModel> statusList,
      @FlexibleDateTimeConverter() DateTime createdAt});
}

/// @nodoc
class __$SpotModelCopyWithImpl<$Res> implements _$SpotModelCopyWith<$Res> {
  __$SpotModelCopyWithImpl(this._self, this._then);

  final _SpotModel _self;
  final $Res Function(_SpotModel) _then;

  /// Create a copy of SpotModel
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
    return _then(_SpotModel(
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
              as List<SpotStatusListModel>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
