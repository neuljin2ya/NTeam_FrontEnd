// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_spot_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateSpotRequest {
  String get name;
  String get captionImgUrl;
  String get latitude;
  String get longitude;
  String get mainAddress;
  String get subAddress;
  String get difficulty;
  String get description;
  List<String> get features;
  List<String> get statuses;

  /// Create a copy of CreateSpotRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateSpotRequestCopyWith<CreateSpotRequest> get copyWith =>
      _$CreateSpotRequestCopyWithImpl<CreateSpotRequest>(
          this as CreateSpotRequest, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateSpotRequest &&
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
    return 'CreateSpotRequest(name: $name, captionImgUrl: $captionImgUrl, latitude: $latitude, longitude: $longitude, mainAddress: $mainAddress, subAddress: $subAddress, difficulty: $difficulty, description: $description, features: $features, statuses: $statuses)';
  }
}

/// @nodoc
abstract mixin class $CreateSpotRequestCopyWith<$Res> {
  factory $CreateSpotRequestCopyWith(
          CreateSpotRequest value, $Res Function(CreateSpotRequest) _then) =
      _$CreateSpotRequestCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String captionImgUrl,
      String latitude,
      String longitude,
      String mainAddress,
      String subAddress,
      String difficulty,
      String description,
      List<String> features,
      List<String> statuses});
}

/// @nodoc
class _$CreateSpotRequestCopyWithImpl<$Res>
    implements $CreateSpotRequestCopyWith<$Res> {
  _$CreateSpotRequestCopyWithImpl(this._self, this._then);

  final CreateSpotRequest _self;
  final $Res Function(CreateSpotRequest) _then;

  /// Create a copy of CreateSpotRequest
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

/// Adds pattern-matching-related methods to [CreateSpotRequest].
extension CreateSpotRequestPatterns on CreateSpotRequest {
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
    TResult Function(_CreateSpotRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateSpotRequest() when $default != null:
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
    TResult Function(_CreateSpotRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSpotRequest():
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
    TResult? Function(_CreateSpotRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSpotRequest() when $default != null:
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
            String mainAddress,
            String subAddress,
            String difficulty,
            String description,
            List<String> features,
            List<String> statuses)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateSpotRequest() when $default != null:
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
            String mainAddress,
            String subAddress,
            String difficulty,
            String description,
            List<String> features,
            List<String> statuses)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSpotRequest():
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
            String mainAddress,
            String subAddress,
            String difficulty,
            String description,
            List<String> features,
            List<String> statuses)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSpotRequest() when $default != null:
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

class _CreateSpotRequest implements CreateSpotRequest {
  const _CreateSpotRequest(
      {required this.name,
      required this.captionImgUrl,
      required this.latitude,
      required this.longitude,
      required this.mainAddress,
      required this.subAddress,
      required this.difficulty,
      required this.description,
      final List<String> features = const <String>[],
      final List<String> statuses = const <String>[]})
      : _features = features,
        _statuses = statuses;

  @override
  final String name;
  @override
  final String captionImgUrl;
  @override
  final String latitude;
  @override
  final String longitude;
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

  final List<String> _statuses;
  @override
  @JsonKey()
  List<String> get statuses {
    if (_statuses is EqualUnmodifiableListView) return _statuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statuses);
  }

  /// Create a copy of CreateSpotRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateSpotRequestCopyWith<_CreateSpotRequest> get copyWith =>
      __$CreateSpotRequestCopyWithImpl<_CreateSpotRequest>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateSpotRequest &&
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
    return 'CreateSpotRequest(name: $name, captionImgUrl: $captionImgUrl, latitude: $latitude, longitude: $longitude, mainAddress: $mainAddress, subAddress: $subAddress, difficulty: $difficulty, description: $description, features: $features, statuses: $statuses)';
  }
}

/// @nodoc
abstract mixin class _$CreateSpotRequestCopyWith<$Res>
    implements $CreateSpotRequestCopyWith<$Res> {
  factory _$CreateSpotRequestCopyWith(
          _CreateSpotRequest value, $Res Function(_CreateSpotRequest) _then) =
      __$CreateSpotRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String captionImgUrl,
      String latitude,
      String longitude,
      String mainAddress,
      String subAddress,
      String difficulty,
      String description,
      List<String> features,
      List<String> statuses});
}

/// @nodoc
class __$CreateSpotRequestCopyWithImpl<$Res>
    implements _$CreateSpotRequestCopyWith<$Res> {
  __$CreateSpotRequestCopyWithImpl(this._self, this._then);

  final _CreateSpotRequest _self;
  final $Res Function(_CreateSpotRequest) _then;

  /// Create a copy of CreateSpotRequest
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
    return _then(_CreateSpotRequest(
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
