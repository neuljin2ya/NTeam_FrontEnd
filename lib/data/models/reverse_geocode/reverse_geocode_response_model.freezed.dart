// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reverse_geocode_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReverseGeocodeResponseModel {
  ReverseGeocodeStatusModel get status;
  List<ReverseGeocodeResultModel> get results;

  /// Create a copy of ReverseGeocodeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReverseGeocodeResponseModelCopyWith<ReverseGeocodeResponseModel>
      get copyWith => _$ReverseGeocodeResponseModelCopyWithImpl<
              ReverseGeocodeResponseModel>(
          this as ReverseGeocodeResponseModel, _$identity);

  /// Serializes this ReverseGeocodeResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReverseGeocodeResponseModel &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(results));

  @override
  String toString() {
    return 'ReverseGeocodeResponseModel(status: $status, results: $results)';
  }
}

/// @nodoc
abstract mixin class $ReverseGeocodeResponseModelCopyWith<$Res> {
  factory $ReverseGeocodeResponseModelCopyWith(
          ReverseGeocodeResponseModel value,
          $Res Function(ReverseGeocodeResponseModel) _then) =
      _$ReverseGeocodeResponseModelCopyWithImpl;
  @useResult
  $Res call(
      {ReverseGeocodeStatusModel status,
      List<ReverseGeocodeResultModel> results});

  $ReverseGeocodeStatusModelCopyWith<$Res> get status;
}

/// @nodoc
class _$ReverseGeocodeResponseModelCopyWithImpl<$Res>
    implements $ReverseGeocodeResponseModelCopyWith<$Res> {
  _$ReverseGeocodeResponseModelCopyWithImpl(this._self, this._then);

  final ReverseGeocodeResponseModel _self;
  final $Res Function(ReverseGeocodeResponseModel) _then;

  /// Create a copy of ReverseGeocodeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? results = null,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReverseGeocodeStatusModel,
      results: null == results
          ? _self.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ReverseGeocodeResultModel>,
    ));
  }

  /// Create a copy of ReverseGeocodeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReverseGeocodeStatusModelCopyWith<$Res> get status {
    return $ReverseGeocodeStatusModelCopyWith<$Res>(_self.status, (value) {
      return _then(_self.copyWith(status: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ReverseGeocodeResponseModel].
extension ReverseGeocodeResponseModelPatterns on ReverseGeocodeResponseModel {
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
    TResult Function(_ReverseGeocodeResponseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeResponseModel() when $default != null:
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
    TResult Function(_ReverseGeocodeResponseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeResponseModel():
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
    TResult? Function(_ReverseGeocodeResponseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeResponseModel() when $default != null:
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
    TResult Function(ReverseGeocodeStatusModel status,
            List<ReverseGeocodeResultModel> results)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeResponseModel() when $default != null:
        return $default(_that.status, _that.results);
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
    TResult Function(ReverseGeocodeStatusModel status,
            List<ReverseGeocodeResultModel> results)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeResponseModel():
        return $default(_that.status, _that.results);
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
    TResult? Function(ReverseGeocodeStatusModel status,
            List<ReverseGeocodeResultModel> results)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeResponseModel() when $default != null:
        return $default(_that.status, _that.results);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReverseGeocodeResponseModel extends ReverseGeocodeResponseModel {
  const _ReverseGeocodeResponseModel(
      {this.status = const ReverseGeocodeStatusModel(),
      final List<ReverseGeocodeResultModel> results =
          const <ReverseGeocodeResultModel>[]})
      : _results = results,
        super._();
  factory _ReverseGeocodeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ReverseGeocodeResponseModelFromJson(json);

  @override
  @JsonKey()
  final ReverseGeocodeStatusModel status;
  final List<ReverseGeocodeResultModel> _results;
  @override
  @JsonKey()
  List<ReverseGeocodeResultModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  /// Create a copy of ReverseGeocodeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReverseGeocodeResponseModelCopyWith<_ReverseGeocodeResponseModel>
      get copyWith => __$ReverseGeocodeResponseModelCopyWithImpl<
          _ReverseGeocodeResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReverseGeocodeResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReverseGeocodeResponseModel &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_results));

  @override
  String toString() {
    return 'ReverseGeocodeResponseModel(status: $status, results: $results)';
  }
}

/// @nodoc
abstract mixin class _$ReverseGeocodeResponseModelCopyWith<$Res>
    implements $ReverseGeocodeResponseModelCopyWith<$Res> {
  factory _$ReverseGeocodeResponseModelCopyWith(
          _ReverseGeocodeResponseModel value,
          $Res Function(_ReverseGeocodeResponseModel) _then) =
      __$ReverseGeocodeResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ReverseGeocodeStatusModel status,
      List<ReverseGeocodeResultModel> results});

  @override
  $ReverseGeocodeStatusModelCopyWith<$Res> get status;
}

/// @nodoc
class __$ReverseGeocodeResponseModelCopyWithImpl<$Res>
    implements _$ReverseGeocodeResponseModelCopyWith<$Res> {
  __$ReverseGeocodeResponseModelCopyWithImpl(this._self, this._then);

  final _ReverseGeocodeResponseModel _self;
  final $Res Function(_ReverseGeocodeResponseModel) _then;

  /// Create a copy of ReverseGeocodeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? results = null,
  }) {
    return _then(_ReverseGeocodeResponseModel(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReverseGeocodeStatusModel,
      results: null == results
          ? _self._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ReverseGeocodeResultModel>,
    ));
  }

  /// Create a copy of ReverseGeocodeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReverseGeocodeStatusModelCopyWith<$Res> get status {
    return $ReverseGeocodeStatusModelCopyWith<$Res>(_self.status, (value) {
      return _then(_self.copyWith(status: value));
    });
  }
}

/// @nodoc
mixin _$ReverseGeocodeStatusModel {
  int get code;
  String get name;
  String get message;

  /// Create a copy of ReverseGeocodeStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReverseGeocodeStatusModelCopyWith<ReverseGeocodeStatusModel> get copyWith =>
      _$ReverseGeocodeStatusModelCopyWithImpl<ReverseGeocodeStatusModel>(
          this as ReverseGeocodeStatusModel, _$identity);

  /// Serializes this ReverseGeocodeStatusModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReverseGeocodeStatusModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name, message);

  @override
  String toString() {
    return 'ReverseGeocodeStatusModel(code: $code, name: $name, message: $message)';
  }
}

/// @nodoc
abstract mixin class $ReverseGeocodeStatusModelCopyWith<$Res> {
  factory $ReverseGeocodeStatusModelCopyWith(ReverseGeocodeStatusModel value,
          $Res Function(ReverseGeocodeStatusModel) _then) =
      _$ReverseGeocodeStatusModelCopyWithImpl;
  @useResult
  $Res call({int code, String name, String message});
}

/// @nodoc
class _$ReverseGeocodeStatusModelCopyWithImpl<$Res>
    implements $ReverseGeocodeStatusModelCopyWith<$Res> {
  _$ReverseGeocodeStatusModelCopyWithImpl(this._self, this._then);

  final ReverseGeocodeStatusModel _self;
  final $Res Function(ReverseGeocodeStatusModel) _then;

  /// Create a copy of ReverseGeocodeStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? message = null,
  }) {
    return _then(_self.copyWith(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ReverseGeocodeStatusModel].
extension ReverseGeocodeStatusModelPatterns on ReverseGeocodeStatusModel {
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
    TResult Function(_ReverseGeocodeStatusModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeStatusModel() when $default != null:
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
    TResult Function(_ReverseGeocodeStatusModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeStatusModel():
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
    TResult? Function(_ReverseGeocodeStatusModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeStatusModel() when $default != null:
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
    TResult Function(int code, String name, String message)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeStatusModel() when $default != null:
        return $default(_that.code, _that.name, _that.message);
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
    TResult Function(int code, String name, String message) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeStatusModel():
        return $default(_that.code, _that.name, _that.message);
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
    TResult? Function(int code, String name, String message)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeStatusModel() when $default != null:
        return $default(_that.code, _that.name, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReverseGeocodeStatusModel implements ReverseGeocodeStatusModel {
  const _ReverseGeocodeStatusModel(
      {this.code = -1, this.name = '', this.message = ''});
  factory _ReverseGeocodeStatusModel.fromJson(Map<String, dynamic> json) =>
      _$ReverseGeocodeStatusModelFromJson(json);

  @override
  @JsonKey()
  final int code;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String message;

  /// Create a copy of ReverseGeocodeStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReverseGeocodeStatusModelCopyWith<_ReverseGeocodeStatusModel>
      get copyWith =>
          __$ReverseGeocodeStatusModelCopyWithImpl<_ReverseGeocodeStatusModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReverseGeocodeStatusModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReverseGeocodeStatusModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name, message);

  @override
  String toString() {
    return 'ReverseGeocodeStatusModel(code: $code, name: $name, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ReverseGeocodeStatusModelCopyWith<$Res>
    implements $ReverseGeocodeStatusModelCopyWith<$Res> {
  factory _$ReverseGeocodeStatusModelCopyWith(_ReverseGeocodeStatusModel value,
          $Res Function(_ReverseGeocodeStatusModel) _then) =
      __$ReverseGeocodeStatusModelCopyWithImpl;
  @override
  @useResult
  $Res call({int code, String name, String message});
}

/// @nodoc
class __$ReverseGeocodeStatusModelCopyWithImpl<$Res>
    implements _$ReverseGeocodeStatusModelCopyWith<$Res> {
  __$ReverseGeocodeStatusModelCopyWithImpl(this._self, this._then);

  final _ReverseGeocodeStatusModel _self;
  final $Res Function(_ReverseGeocodeStatusModel) _then;

  /// Create a copy of ReverseGeocodeStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? message = null,
  }) {
    return _then(_ReverseGeocodeStatusModel(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$ReverseGeocodeResultModel {
  String get name;
  ReverseGeocodeRegionModel? get region;
  ReverseGeocodeLandModel? get land;

  /// Create a copy of ReverseGeocodeResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReverseGeocodeResultModelCopyWith<ReverseGeocodeResultModel> get copyWith =>
      _$ReverseGeocodeResultModelCopyWithImpl<ReverseGeocodeResultModel>(
          this as ReverseGeocodeResultModel, _$identity);

  /// Serializes this ReverseGeocodeResultModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReverseGeocodeResultModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.land, land) || other.land == land));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, region, land);

  @override
  String toString() {
    return 'ReverseGeocodeResultModel(name: $name, region: $region, land: $land)';
  }
}

/// @nodoc
abstract mixin class $ReverseGeocodeResultModelCopyWith<$Res> {
  factory $ReverseGeocodeResultModelCopyWith(ReverseGeocodeResultModel value,
          $Res Function(ReverseGeocodeResultModel) _then) =
      _$ReverseGeocodeResultModelCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      ReverseGeocodeRegionModel? region,
      ReverseGeocodeLandModel? land});

  $ReverseGeocodeRegionModelCopyWith<$Res>? get region;
  $ReverseGeocodeLandModelCopyWith<$Res>? get land;
}

/// @nodoc
class _$ReverseGeocodeResultModelCopyWithImpl<$Res>
    implements $ReverseGeocodeResultModelCopyWith<$Res> {
  _$ReverseGeocodeResultModelCopyWithImpl(this._self, this._then);

  final ReverseGeocodeResultModel _self;
  final $Res Function(ReverseGeocodeResultModel) _then;

  /// Create a copy of ReverseGeocodeResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? region = freezed,
    Object? land = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: freezed == region
          ? _self.region
          : region // ignore: cast_nullable_to_non_nullable
              as ReverseGeocodeRegionModel?,
      land: freezed == land
          ? _self.land
          : land // ignore: cast_nullable_to_non_nullable
              as ReverseGeocodeLandModel?,
    ));
  }

  /// Create a copy of ReverseGeocodeResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReverseGeocodeRegionModelCopyWith<$Res>? get region {
    if (_self.region == null) {
      return null;
    }

    return $ReverseGeocodeRegionModelCopyWith<$Res>(_self.region!, (value) {
      return _then(_self.copyWith(region: value));
    });
  }

  /// Create a copy of ReverseGeocodeResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReverseGeocodeLandModelCopyWith<$Res>? get land {
    if (_self.land == null) {
      return null;
    }

    return $ReverseGeocodeLandModelCopyWith<$Res>(_self.land!, (value) {
      return _then(_self.copyWith(land: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ReverseGeocodeResultModel].
extension ReverseGeocodeResultModelPatterns on ReverseGeocodeResultModel {
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
    TResult Function(_ReverseGeocodeResultModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeResultModel() when $default != null:
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
    TResult Function(_ReverseGeocodeResultModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeResultModel():
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
    TResult? Function(_ReverseGeocodeResultModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeResultModel() when $default != null:
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
    TResult Function(String name, ReverseGeocodeRegionModel? region,
            ReverseGeocodeLandModel? land)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeResultModel() when $default != null:
        return $default(_that.name, _that.region, _that.land);
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
    TResult Function(String name, ReverseGeocodeRegionModel? region,
            ReverseGeocodeLandModel? land)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeResultModel():
        return $default(_that.name, _that.region, _that.land);
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
    TResult? Function(String name, ReverseGeocodeRegionModel? region,
            ReverseGeocodeLandModel? land)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeResultModel() when $default != null:
        return $default(_that.name, _that.region, _that.land);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReverseGeocodeResultModel implements ReverseGeocodeResultModel {
  const _ReverseGeocodeResultModel({this.name = '', this.region, this.land});
  factory _ReverseGeocodeResultModel.fromJson(Map<String, dynamic> json) =>
      _$ReverseGeocodeResultModelFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  final ReverseGeocodeRegionModel? region;
  @override
  final ReverseGeocodeLandModel? land;

  /// Create a copy of ReverseGeocodeResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReverseGeocodeResultModelCopyWith<_ReverseGeocodeResultModel>
      get copyWith =>
          __$ReverseGeocodeResultModelCopyWithImpl<_ReverseGeocodeResultModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReverseGeocodeResultModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReverseGeocodeResultModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.land, land) || other.land == land));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, region, land);

  @override
  String toString() {
    return 'ReverseGeocodeResultModel(name: $name, region: $region, land: $land)';
  }
}

/// @nodoc
abstract mixin class _$ReverseGeocodeResultModelCopyWith<$Res>
    implements $ReverseGeocodeResultModelCopyWith<$Res> {
  factory _$ReverseGeocodeResultModelCopyWith(_ReverseGeocodeResultModel value,
          $Res Function(_ReverseGeocodeResultModel) _then) =
      __$ReverseGeocodeResultModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      ReverseGeocodeRegionModel? region,
      ReverseGeocodeLandModel? land});

  @override
  $ReverseGeocodeRegionModelCopyWith<$Res>? get region;
  @override
  $ReverseGeocodeLandModelCopyWith<$Res>? get land;
}

/// @nodoc
class __$ReverseGeocodeResultModelCopyWithImpl<$Res>
    implements _$ReverseGeocodeResultModelCopyWith<$Res> {
  __$ReverseGeocodeResultModelCopyWithImpl(this._self, this._then);

  final _ReverseGeocodeResultModel _self;
  final $Res Function(_ReverseGeocodeResultModel) _then;

  /// Create a copy of ReverseGeocodeResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? region = freezed,
    Object? land = freezed,
  }) {
    return _then(_ReverseGeocodeResultModel(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: freezed == region
          ? _self.region
          : region // ignore: cast_nullable_to_non_nullable
              as ReverseGeocodeRegionModel?,
      land: freezed == land
          ? _self.land
          : land // ignore: cast_nullable_to_non_nullable
              as ReverseGeocodeLandModel?,
    ));
  }

  /// Create a copy of ReverseGeocodeResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReverseGeocodeRegionModelCopyWith<$Res>? get region {
    if (_self.region == null) {
      return null;
    }

    return $ReverseGeocodeRegionModelCopyWith<$Res>(_self.region!, (value) {
      return _then(_self.copyWith(region: value));
    });
  }

  /// Create a copy of ReverseGeocodeResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReverseGeocodeLandModelCopyWith<$Res>? get land {
    if (_self.land == null) {
      return null;
    }

    return $ReverseGeocodeLandModelCopyWith<$Res>(_self.land!, (value) {
      return _then(_self.copyWith(land: value));
    });
  }
}

/// @nodoc
mixin _$ReverseGeocodeRegionModel {
  ReverseGeocodeAreaModel? get area0;
  ReverseGeocodeAreaModel? get area1;
  ReverseGeocodeAreaModel? get area2;
  ReverseGeocodeAreaModel? get area3;
  ReverseGeocodeAreaModel? get area4;

  /// Create a copy of ReverseGeocodeRegionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReverseGeocodeRegionModelCopyWith<ReverseGeocodeRegionModel> get copyWith =>
      _$ReverseGeocodeRegionModelCopyWithImpl<ReverseGeocodeRegionModel>(
          this as ReverseGeocodeRegionModel, _$identity);

  /// Serializes this ReverseGeocodeRegionModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReverseGeocodeRegionModel &&
            (identical(other.area0, area0) || other.area0 == area0) &&
            (identical(other.area1, area1) || other.area1 == area1) &&
            (identical(other.area2, area2) || other.area2 == area2) &&
            (identical(other.area3, area3) || other.area3 == area3) &&
            (identical(other.area4, area4) || other.area4 == area4));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, area0, area1, area2, area3, area4);

  @override
  String toString() {
    return 'ReverseGeocodeRegionModel(area0: $area0, area1: $area1, area2: $area2, area3: $area3, area4: $area4)';
  }
}

/// @nodoc
abstract mixin class $ReverseGeocodeRegionModelCopyWith<$Res> {
  factory $ReverseGeocodeRegionModelCopyWith(ReverseGeocodeRegionModel value,
          $Res Function(ReverseGeocodeRegionModel) _then) =
      _$ReverseGeocodeRegionModelCopyWithImpl;
  @useResult
  $Res call(
      {ReverseGeocodeAreaModel? area0,
      ReverseGeocodeAreaModel? area1,
      ReverseGeocodeAreaModel? area2,
      ReverseGeocodeAreaModel? area3,
      ReverseGeocodeAreaModel? area4});

  $ReverseGeocodeAreaModelCopyWith<$Res>? get area0;
  $ReverseGeocodeAreaModelCopyWith<$Res>? get area1;
  $ReverseGeocodeAreaModelCopyWith<$Res>? get area2;
  $ReverseGeocodeAreaModelCopyWith<$Res>? get area3;
  $ReverseGeocodeAreaModelCopyWith<$Res>? get area4;
}

/// @nodoc
class _$ReverseGeocodeRegionModelCopyWithImpl<$Res>
    implements $ReverseGeocodeRegionModelCopyWith<$Res> {
  _$ReverseGeocodeRegionModelCopyWithImpl(this._self, this._then);

  final ReverseGeocodeRegionModel _self;
  final $Res Function(ReverseGeocodeRegionModel) _then;

  /// Create a copy of ReverseGeocodeRegionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area0 = freezed,
    Object? area1 = freezed,
    Object? area2 = freezed,
    Object? area3 = freezed,
    Object? area4 = freezed,
  }) {
    return _then(_self.copyWith(
      area0: freezed == area0
          ? _self.area0
          : area0 // ignore: cast_nullable_to_non_nullable
              as ReverseGeocodeAreaModel?,
      area1: freezed == area1
          ? _self.area1
          : area1 // ignore: cast_nullable_to_non_nullable
              as ReverseGeocodeAreaModel?,
      area2: freezed == area2
          ? _self.area2
          : area2 // ignore: cast_nullable_to_non_nullable
              as ReverseGeocodeAreaModel?,
      area3: freezed == area3
          ? _self.area3
          : area3 // ignore: cast_nullable_to_non_nullable
              as ReverseGeocodeAreaModel?,
      area4: freezed == area4
          ? _self.area4
          : area4 // ignore: cast_nullable_to_non_nullable
              as ReverseGeocodeAreaModel?,
    ));
  }

  /// Create a copy of ReverseGeocodeRegionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReverseGeocodeAreaModelCopyWith<$Res>? get area0 {
    if (_self.area0 == null) {
      return null;
    }

    return $ReverseGeocodeAreaModelCopyWith<$Res>(_self.area0!, (value) {
      return _then(_self.copyWith(area0: value));
    });
  }

  /// Create a copy of ReverseGeocodeRegionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReverseGeocodeAreaModelCopyWith<$Res>? get area1 {
    if (_self.area1 == null) {
      return null;
    }

    return $ReverseGeocodeAreaModelCopyWith<$Res>(_self.area1!, (value) {
      return _then(_self.copyWith(area1: value));
    });
  }

  /// Create a copy of ReverseGeocodeRegionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReverseGeocodeAreaModelCopyWith<$Res>? get area2 {
    if (_self.area2 == null) {
      return null;
    }

    return $ReverseGeocodeAreaModelCopyWith<$Res>(_self.area2!, (value) {
      return _then(_self.copyWith(area2: value));
    });
  }

  /// Create a copy of ReverseGeocodeRegionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReverseGeocodeAreaModelCopyWith<$Res>? get area3 {
    if (_self.area3 == null) {
      return null;
    }

    return $ReverseGeocodeAreaModelCopyWith<$Res>(_self.area3!, (value) {
      return _then(_self.copyWith(area3: value));
    });
  }

  /// Create a copy of ReverseGeocodeRegionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReverseGeocodeAreaModelCopyWith<$Res>? get area4 {
    if (_self.area4 == null) {
      return null;
    }

    return $ReverseGeocodeAreaModelCopyWith<$Res>(_self.area4!, (value) {
      return _then(_self.copyWith(area4: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ReverseGeocodeRegionModel].
extension ReverseGeocodeRegionModelPatterns on ReverseGeocodeRegionModel {
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
    TResult Function(_ReverseGeocodeRegionModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeRegionModel() when $default != null:
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
    TResult Function(_ReverseGeocodeRegionModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeRegionModel():
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
    TResult? Function(_ReverseGeocodeRegionModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeRegionModel() when $default != null:
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
            ReverseGeocodeAreaModel? area0,
            ReverseGeocodeAreaModel? area1,
            ReverseGeocodeAreaModel? area2,
            ReverseGeocodeAreaModel? area3,
            ReverseGeocodeAreaModel? area4)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeRegionModel() when $default != null:
        return $default(
            _that.area0, _that.area1, _that.area2, _that.area3, _that.area4);
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
            ReverseGeocodeAreaModel? area0,
            ReverseGeocodeAreaModel? area1,
            ReverseGeocodeAreaModel? area2,
            ReverseGeocodeAreaModel? area3,
            ReverseGeocodeAreaModel? area4)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeRegionModel():
        return $default(
            _that.area0, _that.area1, _that.area2, _that.area3, _that.area4);
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
            ReverseGeocodeAreaModel? area0,
            ReverseGeocodeAreaModel? area1,
            ReverseGeocodeAreaModel? area2,
            ReverseGeocodeAreaModel? area3,
            ReverseGeocodeAreaModel? area4)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeRegionModel() when $default != null:
        return $default(
            _that.area0, _that.area1, _that.area2, _that.area3, _that.area4);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReverseGeocodeRegionModel implements ReverseGeocodeRegionModel {
  const _ReverseGeocodeRegionModel(
      {this.area0, this.area1, this.area2, this.area3, this.area4});
  factory _ReverseGeocodeRegionModel.fromJson(Map<String, dynamic> json) =>
      _$ReverseGeocodeRegionModelFromJson(json);

  @override
  final ReverseGeocodeAreaModel? area0;
  @override
  final ReverseGeocodeAreaModel? area1;
  @override
  final ReverseGeocodeAreaModel? area2;
  @override
  final ReverseGeocodeAreaModel? area3;
  @override
  final ReverseGeocodeAreaModel? area4;

  /// Create a copy of ReverseGeocodeRegionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReverseGeocodeRegionModelCopyWith<_ReverseGeocodeRegionModel>
      get copyWith =>
          __$ReverseGeocodeRegionModelCopyWithImpl<_ReverseGeocodeRegionModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReverseGeocodeRegionModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReverseGeocodeRegionModel &&
            (identical(other.area0, area0) || other.area0 == area0) &&
            (identical(other.area1, area1) || other.area1 == area1) &&
            (identical(other.area2, area2) || other.area2 == area2) &&
            (identical(other.area3, area3) || other.area3 == area3) &&
            (identical(other.area4, area4) || other.area4 == area4));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, area0, area1, area2, area3, area4);

  @override
  String toString() {
    return 'ReverseGeocodeRegionModel(area0: $area0, area1: $area1, area2: $area2, area3: $area3, area4: $area4)';
  }
}

/// @nodoc
abstract mixin class _$ReverseGeocodeRegionModelCopyWith<$Res>
    implements $ReverseGeocodeRegionModelCopyWith<$Res> {
  factory _$ReverseGeocodeRegionModelCopyWith(_ReverseGeocodeRegionModel value,
          $Res Function(_ReverseGeocodeRegionModel) _then) =
      __$ReverseGeocodeRegionModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ReverseGeocodeAreaModel? area0,
      ReverseGeocodeAreaModel? area1,
      ReverseGeocodeAreaModel? area2,
      ReverseGeocodeAreaModel? area3,
      ReverseGeocodeAreaModel? area4});

  @override
  $ReverseGeocodeAreaModelCopyWith<$Res>? get area0;
  @override
  $ReverseGeocodeAreaModelCopyWith<$Res>? get area1;
  @override
  $ReverseGeocodeAreaModelCopyWith<$Res>? get area2;
  @override
  $ReverseGeocodeAreaModelCopyWith<$Res>? get area3;
  @override
  $ReverseGeocodeAreaModelCopyWith<$Res>? get area4;
}

/// @nodoc
class __$ReverseGeocodeRegionModelCopyWithImpl<$Res>
    implements _$ReverseGeocodeRegionModelCopyWith<$Res> {
  __$ReverseGeocodeRegionModelCopyWithImpl(this._self, this._then);

  final _ReverseGeocodeRegionModel _self;
  final $Res Function(_ReverseGeocodeRegionModel) _then;

  /// Create a copy of ReverseGeocodeRegionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? area0 = freezed,
    Object? area1 = freezed,
    Object? area2 = freezed,
    Object? area3 = freezed,
    Object? area4 = freezed,
  }) {
    return _then(_ReverseGeocodeRegionModel(
      area0: freezed == area0
          ? _self.area0
          : area0 // ignore: cast_nullable_to_non_nullable
              as ReverseGeocodeAreaModel?,
      area1: freezed == area1
          ? _self.area1
          : area1 // ignore: cast_nullable_to_non_nullable
              as ReverseGeocodeAreaModel?,
      area2: freezed == area2
          ? _self.area2
          : area2 // ignore: cast_nullable_to_non_nullable
              as ReverseGeocodeAreaModel?,
      area3: freezed == area3
          ? _self.area3
          : area3 // ignore: cast_nullable_to_non_nullable
              as ReverseGeocodeAreaModel?,
      area4: freezed == area4
          ? _self.area4
          : area4 // ignore: cast_nullable_to_non_nullable
              as ReverseGeocodeAreaModel?,
    ));
  }

  /// Create a copy of ReverseGeocodeRegionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReverseGeocodeAreaModelCopyWith<$Res>? get area0 {
    if (_self.area0 == null) {
      return null;
    }

    return $ReverseGeocodeAreaModelCopyWith<$Res>(_self.area0!, (value) {
      return _then(_self.copyWith(area0: value));
    });
  }

  /// Create a copy of ReverseGeocodeRegionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReverseGeocodeAreaModelCopyWith<$Res>? get area1 {
    if (_self.area1 == null) {
      return null;
    }

    return $ReverseGeocodeAreaModelCopyWith<$Res>(_self.area1!, (value) {
      return _then(_self.copyWith(area1: value));
    });
  }

  /// Create a copy of ReverseGeocodeRegionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReverseGeocodeAreaModelCopyWith<$Res>? get area2 {
    if (_self.area2 == null) {
      return null;
    }

    return $ReverseGeocodeAreaModelCopyWith<$Res>(_self.area2!, (value) {
      return _then(_self.copyWith(area2: value));
    });
  }

  /// Create a copy of ReverseGeocodeRegionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReverseGeocodeAreaModelCopyWith<$Res>? get area3 {
    if (_self.area3 == null) {
      return null;
    }

    return $ReverseGeocodeAreaModelCopyWith<$Res>(_self.area3!, (value) {
      return _then(_self.copyWith(area3: value));
    });
  }

  /// Create a copy of ReverseGeocodeRegionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReverseGeocodeAreaModelCopyWith<$Res>? get area4 {
    if (_self.area4 == null) {
      return null;
    }

    return $ReverseGeocodeAreaModelCopyWith<$Res>(_self.area4!, (value) {
      return _then(_self.copyWith(area4: value));
    });
  }
}

/// @nodoc
mixin _$ReverseGeocodeAreaModel {
  String get name;

  /// Create a copy of ReverseGeocodeAreaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReverseGeocodeAreaModelCopyWith<ReverseGeocodeAreaModel> get copyWith =>
      _$ReverseGeocodeAreaModelCopyWithImpl<ReverseGeocodeAreaModel>(
          this as ReverseGeocodeAreaModel, _$identity);

  /// Serializes this ReverseGeocodeAreaModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReverseGeocodeAreaModel &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  String toString() {
    return 'ReverseGeocodeAreaModel(name: $name)';
  }
}

/// @nodoc
abstract mixin class $ReverseGeocodeAreaModelCopyWith<$Res> {
  factory $ReverseGeocodeAreaModelCopyWith(ReverseGeocodeAreaModel value,
          $Res Function(ReverseGeocodeAreaModel) _then) =
      _$ReverseGeocodeAreaModelCopyWithImpl;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$ReverseGeocodeAreaModelCopyWithImpl<$Res>
    implements $ReverseGeocodeAreaModelCopyWith<$Res> {
  _$ReverseGeocodeAreaModelCopyWithImpl(this._self, this._then);

  final ReverseGeocodeAreaModel _self;
  final $Res Function(ReverseGeocodeAreaModel) _then;

  /// Create a copy of ReverseGeocodeAreaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ReverseGeocodeAreaModel].
extension ReverseGeocodeAreaModelPatterns on ReverseGeocodeAreaModel {
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
    TResult Function(_ReverseGeocodeAreaModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeAreaModel() when $default != null:
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
    TResult Function(_ReverseGeocodeAreaModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeAreaModel():
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
    TResult? Function(_ReverseGeocodeAreaModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeAreaModel() when $default != null:
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
    TResult Function(String name)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeAreaModel() when $default != null:
        return $default(_that.name);
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
    TResult Function(String name) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeAreaModel():
        return $default(_that.name);
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
    TResult? Function(String name)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeAreaModel() when $default != null:
        return $default(_that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReverseGeocodeAreaModel implements ReverseGeocodeAreaModel {
  const _ReverseGeocodeAreaModel({this.name = ''});
  factory _ReverseGeocodeAreaModel.fromJson(Map<String, dynamic> json) =>
      _$ReverseGeocodeAreaModelFromJson(json);

  @override
  @JsonKey()
  final String name;

  /// Create a copy of ReverseGeocodeAreaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReverseGeocodeAreaModelCopyWith<_ReverseGeocodeAreaModel> get copyWith =>
      __$ReverseGeocodeAreaModelCopyWithImpl<_ReverseGeocodeAreaModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReverseGeocodeAreaModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReverseGeocodeAreaModel &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  String toString() {
    return 'ReverseGeocodeAreaModel(name: $name)';
  }
}

/// @nodoc
abstract mixin class _$ReverseGeocodeAreaModelCopyWith<$Res>
    implements $ReverseGeocodeAreaModelCopyWith<$Res> {
  factory _$ReverseGeocodeAreaModelCopyWith(_ReverseGeocodeAreaModel value,
          $Res Function(_ReverseGeocodeAreaModel) _then) =
      __$ReverseGeocodeAreaModelCopyWithImpl;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$ReverseGeocodeAreaModelCopyWithImpl<$Res>
    implements _$ReverseGeocodeAreaModelCopyWith<$Res> {
  __$ReverseGeocodeAreaModelCopyWithImpl(this._self, this._then);

  final _ReverseGeocodeAreaModel _self;
  final $Res Function(_ReverseGeocodeAreaModel) _then;

  /// Create a copy of ReverseGeocodeAreaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
  }) {
    return _then(_ReverseGeocodeAreaModel(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$ReverseGeocodeLandModel {
  String get type;
  String get name;
  String get number1;
  String get number2;
  ReverseGeocodeAdditionModel? get addition0;

  /// Create a copy of ReverseGeocodeLandModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReverseGeocodeLandModelCopyWith<ReverseGeocodeLandModel> get copyWith =>
      _$ReverseGeocodeLandModelCopyWithImpl<ReverseGeocodeLandModel>(
          this as ReverseGeocodeLandModel, _$identity);

  /// Serializes this ReverseGeocodeLandModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReverseGeocodeLandModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number1, number1) || other.number1 == number1) &&
            (identical(other.number2, number2) || other.number2 == number2) &&
            (identical(other.addition0, addition0) ||
                other.addition0 == addition0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, name, number1, number2, addition0);

  @override
  String toString() {
    return 'ReverseGeocodeLandModel(type: $type, name: $name, number1: $number1, number2: $number2, addition0: $addition0)';
  }
}

/// @nodoc
abstract mixin class $ReverseGeocodeLandModelCopyWith<$Res> {
  factory $ReverseGeocodeLandModelCopyWith(ReverseGeocodeLandModel value,
          $Res Function(ReverseGeocodeLandModel) _then) =
      _$ReverseGeocodeLandModelCopyWithImpl;
  @useResult
  $Res call(
      {String type,
      String name,
      String number1,
      String number2,
      ReverseGeocodeAdditionModel? addition0});

  $ReverseGeocodeAdditionModelCopyWith<$Res>? get addition0;
}

/// @nodoc
class _$ReverseGeocodeLandModelCopyWithImpl<$Res>
    implements $ReverseGeocodeLandModelCopyWith<$Res> {
  _$ReverseGeocodeLandModelCopyWithImpl(this._self, this._then);

  final ReverseGeocodeLandModel _self;
  final $Res Function(ReverseGeocodeLandModel) _then;

  /// Create a copy of ReverseGeocodeLandModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? number1 = null,
    Object? number2 = null,
    Object? addition0 = freezed,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number1: null == number1
          ? _self.number1
          : number1 // ignore: cast_nullable_to_non_nullable
              as String,
      number2: null == number2
          ? _self.number2
          : number2 // ignore: cast_nullable_to_non_nullable
              as String,
      addition0: freezed == addition0
          ? _self.addition0
          : addition0 // ignore: cast_nullable_to_non_nullable
              as ReverseGeocodeAdditionModel?,
    ));
  }

  /// Create a copy of ReverseGeocodeLandModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReverseGeocodeAdditionModelCopyWith<$Res>? get addition0 {
    if (_self.addition0 == null) {
      return null;
    }

    return $ReverseGeocodeAdditionModelCopyWith<$Res>(_self.addition0!,
        (value) {
      return _then(_self.copyWith(addition0: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ReverseGeocodeLandModel].
extension ReverseGeocodeLandModelPatterns on ReverseGeocodeLandModel {
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
    TResult Function(_ReverseGeocodeLandModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeLandModel() when $default != null:
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
    TResult Function(_ReverseGeocodeLandModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeLandModel():
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
    TResult? Function(_ReverseGeocodeLandModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeLandModel() when $default != null:
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
    TResult Function(String type, String name, String number1, String number2,
            ReverseGeocodeAdditionModel? addition0)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeLandModel() when $default != null:
        return $default(_that.type, _that.name, _that.number1, _that.number2,
            _that.addition0);
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
    TResult Function(String type, String name, String number1, String number2,
            ReverseGeocodeAdditionModel? addition0)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeLandModel():
        return $default(_that.type, _that.name, _that.number1, _that.number2,
            _that.addition0);
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
    TResult? Function(String type, String name, String number1, String number2,
            ReverseGeocodeAdditionModel? addition0)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeLandModel() when $default != null:
        return $default(_that.type, _that.name, _that.number1, _that.number2,
            _that.addition0);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReverseGeocodeLandModel implements ReverseGeocodeLandModel {
  const _ReverseGeocodeLandModel(
      {this.type = '',
      this.name = '',
      this.number1 = '',
      this.number2 = '',
      this.addition0});
  factory _ReverseGeocodeLandModel.fromJson(Map<String, dynamic> json) =>
      _$ReverseGeocodeLandModelFromJson(json);

  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String number1;
  @override
  @JsonKey()
  final String number2;
  @override
  final ReverseGeocodeAdditionModel? addition0;

  /// Create a copy of ReverseGeocodeLandModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReverseGeocodeLandModelCopyWith<_ReverseGeocodeLandModel> get copyWith =>
      __$ReverseGeocodeLandModelCopyWithImpl<_ReverseGeocodeLandModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReverseGeocodeLandModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReverseGeocodeLandModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number1, number1) || other.number1 == number1) &&
            (identical(other.number2, number2) || other.number2 == number2) &&
            (identical(other.addition0, addition0) ||
                other.addition0 == addition0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, name, number1, number2, addition0);

  @override
  String toString() {
    return 'ReverseGeocodeLandModel(type: $type, name: $name, number1: $number1, number2: $number2, addition0: $addition0)';
  }
}

/// @nodoc
abstract mixin class _$ReverseGeocodeLandModelCopyWith<$Res>
    implements $ReverseGeocodeLandModelCopyWith<$Res> {
  factory _$ReverseGeocodeLandModelCopyWith(_ReverseGeocodeLandModel value,
          $Res Function(_ReverseGeocodeLandModel) _then) =
      __$ReverseGeocodeLandModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String type,
      String name,
      String number1,
      String number2,
      ReverseGeocodeAdditionModel? addition0});

  @override
  $ReverseGeocodeAdditionModelCopyWith<$Res>? get addition0;
}

/// @nodoc
class __$ReverseGeocodeLandModelCopyWithImpl<$Res>
    implements _$ReverseGeocodeLandModelCopyWith<$Res> {
  __$ReverseGeocodeLandModelCopyWithImpl(this._self, this._then);

  final _ReverseGeocodeLandModel _self;
  final $Res Function(_ReverseGeocodeLandModel) _then;

  /// Create a copy of ReverseGeocodeLandModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? number1 = null,
    Object? number2 = null,
    Object? addition0 = freezed,
  }) {
    return _then(_ReverseGeocodeLandModel(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number1: null == number1
          ? _self.number1
          : number1 // ignore: cast_nullable_to_non_nullable
              as String,
      number2: null == number2
          ? _self.number2
          : number2 // ignore: cast_nullable_to_non_nullable
              as String,
      addition0: freezed == addition0
          ? _self.addition0
          : addition0 // ignore: cast_nullable_to_non_nullable
              as ReverseGeocodeAdditionModel?,
    ));
  }

  /// Create a copy of ReverseGeocodeLandModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReverseGeocodeAdditionModelCopyWith<$Res>? get addition0 {
    if (_self.addition0 == null) {
      return null;
    }

    return $ReverseGeocodeAdditionModelCopyWith<$Res>(_self.addition0!,
        (value) {
      return _then(_self.copyWith(addition0: value));
    });
  }
}

/// @nodoc
mixin _$ReverseGeocodeAdditionModel {
  String get type;
  String get value;

  /// Create a copy of ReverseGeocodeAdditionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReverseGeocodeAdditionModelCopyWith<ReverseGeocodeAdditionModel>
      get copyWith => _$ReverseGeocodeAdditionModelCopyWithImpl<
              ReverseGeocodeAdditionModel>(
          this as ReverseGeocodeAdditionModel, _$identity);

  /// Serializes this ReverseGeocodeAdditionModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReverseGeocodeAdditionModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, value);

  @override
  String toString() {
    return 'ReverseGeocodeAdditionModel(type: $type, value: $value)';
  }
}

/// @nodoc
abstract mixin class $ReverseGeocodeAdditionModelCopyWith<$Res> {
  factory $ReverseGeocodeAdditionModelCopyWith(
          ReverseGeocodeAdditionModel value,
          $Res Function(ReverseGeocodeAdditionModel) _then) =
      _$ReverseGeocodeAdditionModelCopyWithImpl;
  @useResult
  $Res call({String type, String value});
}

/// @nodoc
class _$ReverseGeocodeAdditionModelCopyWithImpl<$Res>
    implements $ReverseGeocodeAdditionModelCopyWith<$Res> {
  _$ReverseGeocodeAdditionModelCopyWithImpl(this._self, this._then);

  final ReverseGeocodeAdditionModel _self;
  final $Res Function(ReverseGeocodeAdditionModel) _then;

  /// Create a copy of ReverseGeocodeAdditionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ReverseGeocodeAdditionModel].
extension ReverseGeocodeAdditionModelPatterns on ReverseGeocodeAdditionModel {
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
    TResult Function(_ReverseGeocodeAdditionModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeAdditionModel() when $default != null:
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
    TResult Function(_ReverseGeocodeAdditionModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeAdditionModel():
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
    TResult? Function(_ReverseGeocodeAdditionModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeAdditionModel() when $default != null:
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
    TResult Function(String type, String value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeAdditionModel() when $default != null:
        return $default(_that.type, _that.value);
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
    TResult Function(String type, String value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeAdditionModel():
        return $default(_that.type, _that.value);
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
    TResult? Function(String type, String value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseGeocodeAdditionModel() when $default != null:
        return $default(_that.type, _that.value);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReverseGeocodeAdditionModel implements ReverseGeocodeAdditionModel {
  const _ReverseGeocodeAdditionModel({this.type = '', this.value = ''});
  factory _ReverseGeocodeAdditionModel.fromJson(Map<String, dynamic> json) =>
      _$ReverseGeocodeAdditionModelFromJson(json);

  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String value;

  /// Create a copy of ReverseGeocodeAdditionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReverseGeocodeAdditionModelCopyWith<_ReverseGeocodeAdditionModel>
      get copyWith => __$ReverseGeocodeAdditionModelCopyWithImpl<
          _ReverseGeocodeAdditionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReverseGeocodeAdditionModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReverseGeocodeAdditionModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, value);

  @override
  String toString() {
    return 'ReverseGeocodeAdditionModel(type: $type, value: $value)';
  }
}

/// @nodoc
abstract mixin class _$ReverseGeocodeAdditionModelCopyWith<$Res>
    implements $ReverseGeocodeAdditionModelCopyWith<$Res> {
  factory _$ReverseGeocodeAdditionModelCopyWith(
          _ReverseGeocodeAdditionModel value,
          $Res Function(_ReverseGeocodeAdditionModel) _then) =
      __$ReverseGeocodeAdditionModelCopyWithImpl;
  @override
  @useResult
  $Res call({String type, String value});
}

/// @nodoc
class __$ReverseGeocodeAdditionModelCopyWithImpl<$Res>
    implements _$ReverseGeocodeAdditionModelCopyWith<$Res> {
  __$ReverseGeocodeAdditionModelCopyWithImpl(this._self, this._then);

  final _ReverseGeocodeAdditionModel _self;
  final $Res Function(_ReverseGeocodeAdditionModel) _then;

  /// Create a copy of ReverseGeocodeAdditionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_ReverseGeocodeAdditionModel(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
