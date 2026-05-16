// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geocode_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeocodeResponseModel {
  String get status;
  GeocodeMetaModel get meta;
  List<GeocodeAddressModel> get addresses;
  String? get errorMessage;

  /// Create a copy of GeocodeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GeocodeResponseModelCopyWith<GeocodeResponseModel> get copyWith =>
      _$GeocodeResponseModelCopyWithImpl<GeocodeResponseModel>(
          this as GeocodeResponseModel, _$identity);

  /// Serializes this GeocodeResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GeocodeResponseModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(other.addresses, addresses) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, meta,
      const DeepCollectionEquality().hash(addresses), errorMessage);

  @override
  String toString() {
    return 'GeocodeResponseModel(status: $status, meta: $meta, addresses: $addresses, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $GeocodeResponseModelCopyWith<$Res> {
  factory $GeocodeResponseModelCopyWith(GeocodeResponseModel value,
          $Res Function(GeocodeResponseModel) _then) =
      _$GeocodeResponseModelCopyWithImpl;
  @useResult
  $Res call(
      {String status,
      GeocodeMetaModel meta,
      List<GeocodeAddressModel> addresses,
      String? errorMessage});

  $GeocodeMetaModelCopyWith<$Res> get meta;
}

/// @nodoc
class _$GeocodeResponseModelCopyWithImpl<$Res>
    implements $GeocodeResponseModelCopyWith<$Res> {
  _$GeocodeResponseModelCopyWithImpl(this._self, this._then);

  final GeocodeResponseModel _self;
  final $Res Function(GeocodeResponseModel) _then;

  /// Create a copy of GeocodeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? meta = null,
    Object? addresses = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      meta: null == meta
          ? _self.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as GeocodeMetaModel,
      addresses: null == addresses
          ? _self.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<GeocodeAddressModel>,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of GeocodeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeocodeMetaModelCopyWith<$Res> get meta {
    return $GeocodeMetaModelCopyWith<$Res>(_self.meta, (value) {
      return _then(_self.copyWith(meta: value));
    });
  }
}

/// Adds pattern-matching-related methods to [GeocodeResponseModel].
extension GeocodeResponseModelPatterns on GeocodeResponseModel {
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
    TResult Function(_GeocodeResponseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GeocodeResponseModel() when $default != null:
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
    TResult Function(_GeocodeResponseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeocodeResponseModel():
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
    TResult? Function(_GeocodeResponseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeocodeResponseModel() when $default != null:
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
    TResult Function(String status, GeocodeMetaModel meta,
            List<GeocodeAddressModel> addresses, String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GeocodeResponseModel() when $default != null:
        return $default(
            _that.status, _that.meta, _that.addresses, _that.errorMessage);
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
    TResult Function(String status, GeocodeMetaModel meta,
            List<GeocodeAddressModel> addresses, String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeocodeResponseModel():
        return $default(
            _that.status, _that.meta, _that.addresses, _that.errorMessage);
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
    TResult? Function(String status, GeocodeMetaModel meta,
            List<GeocodeAddressModel> addresses, String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeocodeResponseModel() when $default != null:
        return $default(
            _that.status, _that.meta, _that.addresses, _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GeocodeResponseModel extends GeocodeResponseModel {
  const _GeocodeResponseModel(
      {this.status = '',
      this.meta = const GeocodeMetaModel(),
      final List<GeocodeAddressModel> addresses = const <GeocodeAddressModel>[],
      this.errorMessage})
      : _addresses = addresses,
        super._();
  factory _GeocodeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GeocodeResponseModelFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final GeocodeMetaModel meta;
  final List<GeocodeAddressModel> _addresses;
  @override
  @JsonKey()
  List<GeocodeAddressModel> get addresses {
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addresses);
  }

  @override
  final String? errorMessage;

  /// Create a copy of GeocodeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GeocodeResponseModelCopyWith<_GeocodeResponseModel> get copyWith =>
      __$GeocodeResponseModelCopyWithImpl<_GeocodeResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GeocodeResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GeocodeResponseModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, meta,
      const DeepCollectionEquality().hash(_addresses), errorMessage);

  @override
  String toString() {
    return 'GeocodeResponseModel(status: $status, meta: $meta, addresses: $addresses, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$GeocodeResponseModelCopyWith<$Res>
    implements $GeocodeResponseModelCopyWith<$Res> {
  factory _$GeocodeResponseModelCopyWith(_GeocodeResponseModel value,
          $Res Function(_GeocodeResponseModel) _then) =
      __$GeocodeResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String status,
      GeocodeMetaModel meta,
      List<GeocodeAddressModel> addresses,
      String? errorMessage});

  @override
  $GeocodeMetaModelCopyWith<$Res> get meta;
}

/// @nodoc
class __$GeocodeResponseModelCopyWithImpl<$Res>
    implements _$GeocodeResponseModelCopyWith<$Res> {
  __$GeocodeResponseModelCopyWithImpl(this._self, this._then);

  final _GeocodeResponseModel _self;
  final $Res Function(_GeocodeResponseModel) _then;

  /// Create a copy of GeocodeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? meta = null,
    Object? addresses = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_GeocodeResponseModel(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      meta: null == meta
          ? _self.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as GeocodeMetaModel,
      addresses: null == addresses
          ? _self._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<GeocodeAddressModel>,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of GeocodeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeocodeMetaModelCopyWith<$Res> get meta {
    return $GeocodeMetaModelCopyWith<$Res>(_self.meta, (value) {
      return _then(_self.copyWith(meta: value));
    });
  }
}

/// @nodoc
mixin _$GeocodeMetaModel {
  int get totalCount;
  int get page;
  int get count;

  /// Create a copy of GeocodeMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GeocodeMetaModelCopyWith<GeocodeMetaModel> get copyWith =>
      _$GeocodeMetaModelCopyWithImpl<GeocodeMetaModel>(
          this as GeocodeMetaModel, _$identity);

  /// Serializes this GeocodeMetaModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GeocodeMetaModel &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalCount, page, count);

  @override
  String toString() {
    return 'GeocodeMetaModel(totalCount: $totalCount, page: $page, count: $count)';
  }
}

/// @nodoc
abstract mixin class $GeocodeMetaModelCopyWith<$Res> {
  factory $GeocodeMetaModelCopyWith(
          GeocodeMetaModel value, $Res Function(GeocodeMetaModel) _then) =
      _$GeocodeMetaModelCopyWithImpl;
  @useResult
  $Res call({int totalCount, int page, int count});
}

/// @nodoc
class _$GeocodeMetaModelCopyWithImpl<$Res>
    implements $GeocodeMetaModelCopyWith<$Res> {
  _$GeocodeMetaModelCopyWithImpl(this._self, this._then);

  final GeocodeMetaModel _self;
  final $Res Function(GeocodeMetaModel) _then;

  /// Create a copy of GeocodeMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? page = null,
    Object? count = null,
  }) {
    return _then(_self.copyWith(
      totalCount: null == totalCount
          ? _self.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [GeocodeMetaModel].
extension GeocodeMetaModelPatterns on GeocodeMetaModel {
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
    TResult Function(_GeocodeMetaModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GeocodeMetaModel() when $default != null:
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
    TResult Function(_GeocodeMetaModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeocodeMetaModel():
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
    TResult? Function(_GeocodeMetaModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeocodeMetaModel() when $default != null:
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
    TResult Function(int totalCount, int page, int count)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GeocodeMetaModel() when $default != null:
        return $default(_that.totalCount, _that.page, _that.count);
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
    TResult Function(int totalCount, int page, int count) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeocodeMetaModel():
        return $default(_that.totalCount, _that.page, _that.count);
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
    TResult? Function(int totalCount, int page, int count)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeocodeMetaModel() when $default != null:
        return $default(_that.totalCount, _that.page, _that.count);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GeocodeMetaModel implements GeocodeMetaModel {
  const _GeocodeMetaModel({this.totalCount = 0, this.page = 1, this.count = 0});
  factory _GeocodeMetaModel.fromJson(Map<String, dynamic> json) =>
      _$GeocodeMetaModelFromJson(json);

  @override
  @JsonKey()
  final int totalCount;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int count;

  /// Create a copy of GeocodeMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GeocodeMetaModelCopyWith<_GeocodeMetaModel> get copyWith =>
      __$GeocodeMetaModelCopyWithImpl<_GeocodeMetaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GeocodeMetaModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GeocodeMetaModel &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalCount, page, count);

  @override
  String toString() {
    return 'GeocodeMetaModel(totalCount: $totalCount, page: $page, count: $count)';
  }
}

/// @nodoc
abstract mixin class _$GeocodeMetaModelCopyWith<$Res>
    implements $GeocodeMetaModelCopyWith<$Res> {
  factory _$GeocodeMetaModelCopyWith(
          _GeocodeMetaModel value, $Res Function(_GeocodeMetaModel) _then) =
      __$GeocodeMetaModelCopyWithImpl;
  @override
  @useResult
  $Res call({int totalCount, int page, int count});
}

/// @nodoc
class __$GeocodeMetaModelCopyWithImpl<$Res>
    implements _$GeocodeMetaModelCopyWith<$Res> {
  __$GeocodeMetaModelCopyWithImpl(this._self, this._then);

  final _GeocodeMetaModel _self;
  final $Res Function(_GeocodeMetaModel) _then;

  /// Create a copy of GeocodeMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? totalCount = null,
    Object? page = null,
    Object? count = null,
  }) {
    return _then(_GeocodeMetaModel(
      totalCount: null == totalCount
          ? _self.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$GeocodeAddressModel {
  String get roadAddress;
  String get jibunAddress;
  String get englishAddress;
  List<GeocodeAddressElementModel> get addressElements;
  @JsonKey(name: 'x')
  String get longitude;
  @JsonKey(name: 'y')
  String get latitude;
  double? get distance;

  /// Create a copy of GeocodeAddressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GeocodeAddressModelCopyWith<GeocodeAddressModel> get copyWith =>
      _$GeocodeAddressModelCopyWithImpl<GeocodeAddressModel>(
          this as GeocodeAddressModel, _$identity);

  /// Serializes this GeocodeAddressModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GeocodeAddressModel &&
            (identical(other.roadAddress, roadAddress) ||
                other.roadAddress == roadAddress) &&
            (identical(other.jibunAddress, jibunAddress) ||
                other.jibunAddress == jibunAddress) &&
            (identical(other.englishAddress, englishAddress) ||
                other.englishAddress == englishAddress) &&
            const DeepCollectionEquality()
                .equals(other.addressElements, addressElements) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      roadAddress,
      jibunAddress,
      englishAddress,
      const DeepCollectionEquality().hash(addressElements),
      longitude,
      latitude,
      distance);

  @override
  String toString() {
    return 'GeocodeAddressModel(roadAddress: $roadAddress, jibunAddress: $jibunAddress, englishAddress: $englishAddress, addressElements: $addressElements, longitude: $longitude, latitude: $latitude, distance: $distance)';
  }
}

/// @nodoc
abstract mixin class $GeocodeAddressModelCopyWith<$Res> {
  factory $GeocodeAddressModelCopyWith(
          GeocodeAddressModel value, $Res Function(GeocodeAddressModel) _then) =
      _$GeocodeAddressModelCopyWithImpl;
  @useResult
  $Res call(
      {String roadAddress,
      String jibunAddress,
      String englishAddress,
      List<GeocodeAddressElementModel> addressElements,
      @JsonKey(name: 'x') String longitude,
      @JsonKey(name: 'y') String latitude,
      double? distance});
}

/// @nodoc
class _$GeocodeAddressModelCopyWithImpl<$Res>
    implements $GeocodeAddressModelCopyWith<$Res> {
  _$GeocodeAddressModelCopyWithImpl(this._self, this._then);

  final GeocodeAddressModel _self;
  final $Res Function(GeocodeAddressModel) _then;

  /// Create a copy of GeocodeAddressModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roadAddress = null,
    Object? jibunAddress = null,
    Object? englishAddress = null,
    Object? addressElements = null,
    Object? longitude = null,
    Object? latitude = null,
    Object? distance = freezed,
  }) {
    return _then(_self.copyWith(
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
      addressElements: null == addressElements
          ? _self.addressElements
          : addressElements // ignore: cast_nullable_to_non_nullable
              as List<GeocodeAddressElementModel>,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      distance: freezed == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// Adds pattern-matching-related methods to [GeocodeAddressModel].
extension GeocodeAddressModelPatterns on GeocodeAddressModel {
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
    TResult Function(_GeocodeAddressModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GeocodeAddressModel() when $default != null:
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
    TResult Function(_GeocodeAddressModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeocodeAddressModel():
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
    TResult? Function(_GeocodeAddressModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeocodeAddressModel() when $default != null:
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
            String roadAddress,
            String jibunAddress,
            String englishAddress,
            List<GeocodeAddressElementModel> addressElements,
            @JsonKey(name: 'x') String longitude,
            @JsonKey(name: 'y') String latitude,
            double? distance)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GeocodeAddressModel() when $default != null:
        return $default(
            _that.roadAddress,
            _that.jibunAddress,
            _that.englishAddress,
            _that.addressElements,
            _that.longitude,
            _that.latitude,
            _that.distance);
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
            String roadAddress,
            String jibunAddress,
            String englishAddress,
            List<GeocodeAddressElementModel> addressElements,
            @JsonKey(name: 'x') String longitude,
            @JsonKey(name: 'y') String latitude,
            double? distance)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeocodeAddressModel():
        return $default(
            _that.roadAddress,
            _that.jibunAddress,
            _that.englishAddress,
            _that.addressElements,
            _that.longitude,
            _that.latitude,
            _that.distance);
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
            String roadAddress,
            String jibunAddress,
            String englishAddress,
            List<GeocodeAddressElementModel> addressElements,
            @JsonKey(name: 'x') String longitude,
            @JsonKey(name: 'y') String latitude,
            double? distance)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeocodeAddressModel() when $default != null:
        return $default(
            _that.roadAddress,
            _that.jibunAddress,
            _that.englishAddress,
            _that.addressElements,
            _that.longitude,
            _that.latitude,
            _that.distance);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GeocodeAddressModel extends GeocodeAddressModel {
  const _GeocodeAddressModel(
      {this.roadAddress = '',
      this.jibunAddress = '',
      this.englishAddress = '',
      final List<GeocodeAddressElementModel> addressElements =
          const <GeocodeAddressElementModel>[],
      @JsonKey(name: 'x') required this.longitude,
      @JsonKey(name: 'y') required this.latitude,
      this.distance})
      : _addressElements = addressElements,
        super._();
  factory _GeocodeAddressModel.fromJson(Map<String, dynamic> json) =>
      _$GeocodeAddressModelFromJson(json);

  @override
  @JsonKey()
  final String roadAddress;
  @override
  @JsonKey()
  final String jibunAddress;
  @override
  @JsonKey()
  final String englishAddress;
  final List<GeocodeAddressElementModel> _addressElements;
  @override
  @JsonKey()
  List<GeocodeAddressElementModel> get addressElements {
    if (_addressElements is EqualUnmodifiableListView) return _addressElements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addressElements);
  }

  @override
  @JsonKey(name: 'x')
  final String longitude;
  @override
  @JsonKey(name: 'y')
  final String latitude;
  @override
  final double? distance;

  /// Create a copy of GeocodeAddressModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GeocodeAddressModelCopyWith<_GeocodeAddressModel> get copyWith =>
      __$GeocodeAddressModelCopyWithImpl<_GeocodeAddressModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GeocodeAddressModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GeocodeAddressModel &&
            (identical(other.roadAddress, roadAddress) ||
                other.roadAddress == roadAddress) &&
            (identical(other.jibunAddress, jibunAddress) ||
                other.jibunAddress == jibunAddress) &&
            (identical(other.englishAddress, englishAddress) ||
                other.englishAddress == englishAddress) &&
            const DeepCollectionEquality()
                .equals(other._addressElements, _addressElements) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      roadAddress,
      jibunAddress,
      englishAddress,
      const DeepCollectionEquality().hash(_addressElements),
      longitude,
      latitude,
      distance);

  @override
  String toString() {
    return 'GeocodeAddressModel(roadAddress: $roadAddress, jibunAddress: $jibunAddress, englishAddress: $englishAddress, addressElements: $addressElements, longitude: $longitude, latitude: $latitude, distance: $distance)';
  }
}

/// @nodoc
abstract mixin class _$GeocodeAddressModelCopyWith<$Res>
    implements $GeocodeAddressModelCopyWith<$Res> {
  factory _$GeocodeAddressModelCopyWith(_GeocodeAddressModel value,
          $Res Function(_GeocodeAddressModel) _then) =
      __$GeocodeAddressModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String roadAddress,
      String jibunAddress,
      String englishAddress,
      List<GeocodeAddressElementModel> addressElements,
      @JsonKey(name: 'x') String longitude,
      @JsonKey(name: 'y') String latitude,
      double? distance});
}

/// @nodoc
class __$GeocodeAddressModelCopyWithImpl<$Res>
    implements _$GeocodeAddressModelCopyWith<$Res> {
  __$GeocodeAddressModelCopyWithImpl(this._self, this._then);

  final _GeocodeAddressModel _self;
  final $Res Function(_GeocodeAddressModel) _then;

  /// Create a copy of GeocodeAddressModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? roadAddress = null,
    Object? jibunAddress = null,
    Object? englishAddress = null,
    Object? addressElements = null,
    Object? longitude = null,
    Object? latitude = null,
    Object? distance = freezed,
  }) {
    return _then(_GeocodeAddressModel(
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
      addressElements: null == addressElements
          ? _self._addressElements
          : addressElements // ignore: cast_nullable_to_non_nullable
              as List<GeocodeAddressElementModel>,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      distance: freezed == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
mixin _$GeocodeAddressElementModel {
  List<String> get types;
  String get longName;
  String get shortName;
  String get code;

  /// Create a copy of GeocodeAddressElementModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GeocodeAddressElementModelCopyWith<GeocodeAddressElementModel>
      get copyWith =>
          _$GeocodeAddressElementModelCopyWithImpl<GeocodeAddressElementModel>(
              this as GeocodeAddressElementModel, _$identity);

  /// Serializes this GeocodeAddressElementModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GeocodeAddressElementModel &&
            const DeepCollectionEquality().equals(other.types, types) &&
            (identical(other.longName, longName) ||
                other.longName == longName) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(types), longName, shortName, code);

  @override
  String toString() {
    return 'GeocodeAddressElementModel(types: $types, longName: $longName, shortName: $shortName, code: $code)';
  }
}

/// @nodoc
abstract mixin class $GeocodeAddressElementModelCopyWith<$Res> {
  factory $GeocodeAddressElementModelCopyWith(GeocodeAddressElementModel value,
          $Res Function(GeocodeAddressElementModel) _then) =
      _$GeocodeAddressElementModelCopyWithImpl;
  @useResult
  $Res call(
      {List<String> types, String longName, String shortName, String code});
}

/// @nodoc
class _$GeocodeAddressElementModelCopyWithImpl<$Res>
    implements $GeocodeAddressElementModelCopyWith<$Res> {
  _$GeocodeAddressElementModelCopyWithImpl(this._self, this._then);

  final GeocodeAddressElementModel _self;
  final $Res Function(GeocodeAddressElementModel) _then;

  /// Create a copy of GeocodeAddressElementModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? types = null,
    Object? longName = null,
    Object? shortName = null,
    Object? code = null,
  }) {
    return _then(_self.copyWith(
      types: null == types
          ? _self.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
      longName: null == longName
          ? _self.longName
          : longName // ignore: cast_nullable_to_non_nullable
              as String,
      shortName: null == shortName
          ? _self.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [GeocodeAddressElementModel].
extension GeocodeAddressElementModelPatterns on GeocodeAddressElementModel {
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
    TResult Function(_GeocodeAddressElementModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GeocodeAddressElementModel() when $default != null:
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
    TResult Function(_GeocodeAddressElementModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeocodeAddressElementModel():
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
    TResult? Function(_GeocodeAddressElementModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeocodeAddressElementModel() when $default != null:
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
            List<String> types, String longName, String shortName, String code)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GeocodeAddressElementModel() when $default != null:
        return $default(
            _that.types, _that.longName, _that.shortName, _that.code);
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
            List<String> types, String longName, String shortName, String code)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeocodeAddressElementModel():
        return $default(
            _that.types, _that.longName, _that.shortName, _that.code);
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
            List<String> types, String longName, String shortName, String code)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeocodeAddressElementModel() when $default != null:
        return $default(
            _that.types, _that.longName, _that.shortName, _that.code);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GeocodeAddressElementModel implements GeocodeAddressElementModel {
  const _GeocodeAddressElementModel(
      {final List<String> types = const <String>[],
      this.longName = '',
      this.shortName = '',
      this.code = ''})
      : _types = types;
  factory _GeocodeAddressElementModel.fromJson(Map<String, dynamic> json) =>
      _$GeocodeAddressElementModelFromJson(json);

  final List<String> _types;
  @override
  @JsonKey()
  List<String> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  @JsonKey()
  final String longName;
  @override
  @JsonKey()
  final String shortName;
  @override
  @JsonKey()
  final String code;

  /// Create a copy of GeocodeAddressElementModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GeocodeAddressElementModelCopyWith<_GeocodeAddressElementModel>
      get copyWith => __$GeocodeAddressElementModelCopyWithImpl<
          _GeocodeAddressElementModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GeocodeAddressElementModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GeocodeAddressElementModel &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.longName, longName) ||
                other.longName == longName) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_types), longName, shortName, code);

  @override
  String toString() {
    return 'GeocodeAddressElementModel(types: $types, longName: $longName, shortName: $shortName, code: $code)';
  }
}

/// @nodoc
abstract mixin class _$GeocodeAddressElementModelCopyWith<$Res>
    implements $GeocodeAddressElementModelCopyWith<$Res> {
  factory _$GeocodeAddressElementModelCopyWith(
          _GeocodeAddressElementModel value,
          $Res Function(_GeocodeAddressElementModel) _then) =
      __$GeocodeAddressElementModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<String> types, String longName, String shortName, String code});
}

/// @nodoc
class __$GeocodeAddressElementModelCopyWithImpl<$Res>
    implements _$GeocodeAddressElementModelCopyWith<$Res> {
  __$GeocodeAddressElementModelCopyWithImpl(this._self, this._then);

  final _GeocodeAddressElementModel _self;
  final $Res Function(_GeocodeAddressElementModel) _then;

  /// Create a copy of GeocodeAddressElementModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? types = null,
    Object? longName = null,
    Object? shortName = null,
    Object? code = null,
  }) {
    return _then(_GeocodeAddressElementModel(
      types: null == types
          ? _self._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
      longName: null == longName
          ? _self.longName
          : longName // ignore: cast_nullable_to_non_nullable
              as String,
      shortName: null == shortName
          ? _self.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
