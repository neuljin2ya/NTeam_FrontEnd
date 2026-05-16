// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_spot_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateSpotRequestModel {
  String get name;
  String get captionImgUrl;
  String get latitude;
  String get longitude;
  @JsonKey(name: 'main_address')
  String get mainAddress;
  @JsonKey(name: 'sub_address')
  String get subAddress;
  String get difficulty;
  String get description;
  List<String> get features;
  List<String> get statuses;

  /// Create a copy of CreateSpotRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateSpotRequestModelCopyWith<CreateSpotRequestModel> get copyWith =>
      _$CreateSpotRequestModelCopyWithImpl<CreateSpotRequestModel>(
          this as CreateSpotRequestModel, _$identity);

  /// Serializes this CreateSpotRequestModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateSpotRequestModel &&
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
            const DeepCollectionEquality().equals(other.statuses, statuses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      captionImgUrl,
      latitude,
      longitude,
      mainAddress,
      subAddress,
      difficulty,
      description,
      const DeepCollectionEquality().hash(features),
      const DeepCollectionEquality().hash(statuses));

  @override
  String toString() {
    return 'CreateSpotRequestModel(name: $name, captionImgUrl: $captionImgUrl, latitude: $latitude, longitude: $longitude, mainAddress: $mainAddress, subAddress: $subAddress, difficulty: $difficulty, description: $description, features: $features, statuses: $statuses)';
  }
}

/// @nodoc
abstract mixin class $CreateSpotRequestModelCopyWith<$Res> {
  factory $CreateSpotRequestModelCopyWith(CreateSpotRequestModel value,
          $Res Function(CreateSpotRequestModel) _then) =
      _$CreateSpotRequestModelCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String captionImgUrl,
      String latitude,
      String longitude,
      @JsonKey(name: 'main_address') String mainAddress,
      @JsonKey(name: 'sub_address') String subAddress,
      String difficulty,
      String description,
      List<String> features,
      List<String> statuses});
}

/// @nodoc
class _$CreateSpotRequestModelCopyWithImpl<$Res>
    implements $CreateSpotRequestModelCopyWith<$Res> {
  _$CreateSpotRequestModelCopyWithImpl(this._self, this._then);

  final CreateSpotRequestModel _self;
  final $Res Function(CreateSpotRequestModel) _then;

  /// Create a copy of CreateSpotRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? captionImgUrl = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? mainAddress = null,
    Object? subAddress = null,
    Object? difficulty = null,
    Object? description = null,
    Object? features = null,
    Object? statuses = null,
  }) {
    return _then(_self.copyWith(
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
              as String,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
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
      statuses: null == statuses
          ? _self.statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateSpotRequestModel].
extension CreateSpotRequestModelPatterns on CreateSpotRequestModel {
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
    TResult Function(_CreateSpotRequestModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateSpotRequestModel() when $default != null:
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
    TResult Function(_CreateSpotRequestModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSpotRequestModel():
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
    TResult? Function(_CreateSpotRequestModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSpotRequestModel() when $default != null:
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
            String name,
            String captionImgUrl,
            String latitude,
            String longitude,
            @JsonKey(name: 'main_address') String mainAddress,
            @JsonKey(name: 'sub_address') String subAddress,
            String difficulty,
            String description,
            List<String> features,
            List<String> statuses)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateSpotRequestModel() when $default != null:
        return $default(
            _that.name,
            _that.captionImgUrl,
            _that.latitude,
            _that.longitude,
            _that.mainAddress,
            _that.subAddress,
            _that.difficulty,
            _that.description,
            _that.features,
            _that.statuses);
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
            String name,
            String captionImgUrl,
            String latitude,
            String longitude,
            @JsonKey(name: 'main_address') String mainAddress,
            @JsonKey(name: 'sub_address') String subAddress,
            String difficulty,
            String description,
            List<String> features,
            List<String> statuses)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSpotRequestModel():
        return $default(
            _that.name,
            _that.captionImgUrl,
            _that.latitude,
            _that.longitude,
            _that.mainAddress,
            _that.subAddress,
            _that.difficulty,
            _that.description,
            _that.features,
            _that.statuses);
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
            String name,
            String captionImgUrl,
            String latitude,
            String longitude,
            @JsonKey(name: 'main_address') String mainAddress,
            @JsonKey(name: 'sub_address') String subAddress,
            String difficulty,
            String description,
            List<String> features,
            List<String> statuses)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSpotRequestModel() when $default != null:
        return $default(
            _that.name,
            _that.captionImgUrl,
            _that.latitude,
            _that.longitude,
            _that.mainAddress,
            _that.subAddress,
            _that.difficulty,
            _that.description,
            _that.features,
            _that.statuses);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateSpotRequestModel implements CreateSpotRequestModel {
  const _CreateSpotRequestModel(
      {required this.name,
      required this.captionImgUrl,
      required this.latitude,
      required this.longitude,
      @JsonKey(name: 'main_address') required this.mainAddress,
      @JsonKey(name: 'sub_address') required this.subAddress,
      required this.difficulty,
      required this.description,
      final List<String> features = const <String>[],
      final List<String> statuses = const <String>[]})
      : _features = features,
        _statuses = statuses;
  factory _CreateSpotRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateSpotRequestModelFromJson(json);

  @override
  final String name;
  @override
  final String captionImgUrl;
  @override
  final String latitude;
  @override
  final String longitude;
  @override
  @JsonKey(name: 'main_address')
  final String mainAddress;
  @override
  @JsonKey(name: 'sub_address')
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

  final List<String> _statuses;
  @override
  @JsonKey()
  List<String> get statuses {
    if (_statuses is EqualUnmodifiableListView) return _statuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statuses);
  }

  /// Create a copy of CreateSpotRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateSpotRequestModelCopyWith<_CreateSpotRequestModel> get copyWith =>
      __$CreateSpotRequestModelCopyWithImpl<_CreateSpotRequestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateSpotRequestModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateSpotRequestModel &&
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
            const DeepCollectionEquality().equals(other._statuses, _statuses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      captionImgUrl,
      latitude,
      longitude,
      mainAddress,
      subAddress,
      difficulty,
      description,
      const DeepCollectionEquality().hash(_features),
      const DeepCollectionEquality().hash(_statuses));

  @override
  String toString() {
    return 'CreateSpotRequestModel(name: $name, captionImgUrl: $captionImgUrl, latitude: $latitude, longitude: $longitude, mainAddress: $mainAddress, subAddress: $subAddress, difficulty: $difficulty, description: $description, features: $features, statuses: $statuses)';
  }
}

/// @nodoc
abstract mixin class _$CreateSpotRequestModelCopyWith<$Res>
    implements $CreateSpotRequestModelCopyWith<$Res> {
  factory _$CreateSpotRequestModelCopyWith(_CreateSpotRequestModel value,
          $Res Function(_CreateSpotRequestModel) _then) =
      __$CreateSpotRequestModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String captionImgUrl,
      String latitude,
      String longitude,
      @JsonKey(name: 'main_address') String mainAddress,
      @JsonKey(name: 'sub_address') String subAddress,
      String difficulty,
      String description,
      List<String> features,
      List<String> statuses});
}

/// @nodoc
class __$CreateSpotRequestModelCopyWithImpl<$Res>
    implements _$CreateSpotRequestModelCopyWith<$Res> {
  __$CreateSpotRequestModelCopyWithImpl(this._self, this._then);

  final _CreateSpotRequestModel _self;
  final $Res Function(_CreateSpotRequestModel) _then;

  /// Create a copy of CreateSpotRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? captionImgUrl = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? mainAddress = null,
    Object? subAddress = null,
    Object? difficulty = null,
    Object? description = null,
    Object? features = null,
    Object? statuses = null,
  }) {
    return _then(_CreateSpotRequestModel(
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
              as String,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
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
      statuses: null == statuses
          ? _self._statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
