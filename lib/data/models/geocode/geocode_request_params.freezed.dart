// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geocode_request_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeocodeRequestParams {
  String get query;
  double? get centerLongitude;
  double? get centerLatitude;
  String? get filter;
  String get languageCode;
  int get page;
  int get count;

  /// Create a copy of GeocodeRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GeocodeRequestParamsCopyWith<GeocodeRequestParams> get copyWith =>
      _$GeocodeRequestParamsCopyWithImpl<GeocodeRequestParams>(
          this as GeocodeRequestParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GeocodeRequestParams &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.centerLongitude, centerLongitude) ||
                other.centerLongitude == centerLongitude) &&
            (identical(other.centerLatitude, centerLatitude) ||
                other.centerLatitude == centerLatitude) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, centerLongitude,
      centerLatitude, filter, languageCode, page, count);

  @override
  String toString() {
    return 'GeocodeRequestParams(query: $query, centerLongitude: $centerLongitude, centerLatitude: $centerLatitude, filter: $filter, languageCode: $languageCode, page: $page, count: $count)';
  }
}

/// @nodoc
abstract mixin class $GeocodeRequestParamsCopyWith<$Res> {
  factory $GeocodeRequestParamsCopyWith(GeocodeRequestParams value,
          $Res Function(GeocodeRequestParams) _then) =
      _$GeocodeRequestParamsCopyWithImpl;
  @useResult
  $Res call(
      {String query,
      double? centerLongitude,
      double? centerLatitude,
      String? filter,
      String languageCode,
      int page,
      int count});
}

/// @nodoc
class _$GeocodeRequestParamsCopyWithImpl<$Res>
    implements $GeocodeRequestParamsCopyWith<$Res> {
  _$GeocodeRequestParamsCopyWithImpl(this._self, this._then);

  final GeocodeRequestParams _self;
  final $Res Function(GeocodeRequestParams) _then;

  /// Create a copy of GeocodeRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? centerLongitude = freezed,
    Object? centerLatitude = freezed,
    Object? filter = freezed,
    Object? languageCode = null,
    Object? page = null,
    Object? count = null,
  }) {
    return _then(_self.copyWith(
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      centerLongitude: freezed == centerLongitude
          ? _self.centerLongitude
          : centerLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      centerLatitude: freezed == centerLatitude
          ? _self.centerLatitude
          : centerLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      filter: freezed == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
      languageCode: null == languageCode
          ? _self.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
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

/// Adds pattern-matching-related methods to [GeocodeRequestParams].
extension GeocodeRequestParamsPatterns on GeocodeRequestParams {
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
    TResult Function(_GeocodeRequestParams value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GeocodeRequestParams() when $default != null:
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
    TResult Function(_GeocodeRequestParams value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeocodeRequestParams():
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
    TResult? Function(_GeocodeRequestParams value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeocodeRequestParams() when $default != null:
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
            String query,
            double? centerLongitude,
            double? centerLatitude,
            String? filter,
            String languageCode,
            int page,
            int count)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GeocodeRequestParams() when $default != null:
        return $default(
            _that.query,
            _that.centerLongitude,
            _that.centerLatitude,
            _that.filter,
            _that.languageCode,
            _that.page,
            _that.count);
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
            String query,
            double? centerLongitude,
            double? centerLatitude,
            String? filter,
            String languageCode,
            int page,
            int count)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeocodeRequestParams():
        return $default(
            _that.query,
            _that.centerLongitude,
            _that.centerLatitude,
            _that.filter,
            _that.languageCode,
            _that.page,
            _that.count);
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
            String query,
            double? centerLongitude,
            double? centerLatitude,
            String? filter,
            String languageCode,
            int page,
            int count)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeocodeRequestParams() when $default != null:
        return $default(
            _that.query,
            _that.centerLongitude,
            _that.centerLatitude,
            _that.filter,
            _that.languageCode,
            _that.page,
            _that.count);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GeocodeRequestParams extends GeocodeRequestParams {
  const _GeocodeRequestParams(
      {required this.query,
      this.centerLongitude,
      this.centerLatitude,
      this.filter,
      this.languageCode = 'kor',
      this.page = 1,
      this.count = 10})
      : super._();

  @override
  final String query;
  @override
  final double? centerLongitude;
  @override
  final double? centerLatitude;
  @override
  final String? filter;
  @override
  @JsonKey()
  final String languageCode;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int count;

  /// Create a copy of GeocodeRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GeocodeRequestParamsCopyWith<_GeocodeRequestParams> get copyWith =>
      __$GeocodeRequestParamsCopyWithImpl<_GeocodeRequestParams>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GeocodeRequestParams &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.centerLongitude, centerLongitude) ||
                other.centerLongitude == centerLongitude) &&
            (identical(other.centerLatitude, centerLatitude) ||
                other.centerLatitude == centerLatitude) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, centerLongitude,
      centerLatitude, filter, languageCode, page, count);

  @override
  String toString() {
    return 'GeocodeRequestParams(query: $query, centerLongitude: $centerLongitude, centerLatitude: $centerLatitude, filter: $filter, languageCode: $languageCode, page: $page, count: $count)';
  }
}

/// @nodoc
abstract mixin class _$GeocodeRequestParamsCopyWith<$Res>
    implements $GeocodeRequestParamsCopyWith<$Res> {
  factory _$GeocodeRequestParamsCopyWith(_GeocodeRequestParams value,
          $Res Function(_GeocodeRequestParams) _then) =
      __$GeocodeRequestParamsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String query,
      double? centerLongitude,
      double? centerLatitude,
      String? filter,
      String languageCode,
      int page,
      int count});
}

/// @nodoc
class __$GeocodeRequestParamsCopyWithImpl<$Res>
    implements _$GeocodeRequestParamsCopyWith<$Res> {
  __$GeocodeRequestParamsCopyWithImpl(this._self, this._then);

  final _GeocodeRequestParams _self;
  final $Res Function(_GeocodeRequestParams) _then;

  /// Create a copy of GeocodeRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? query = null,
    Object? centerLongitude = freezed,
    Object? centerLatitude = freezed,
    Object? filter = freezed,
    Object? languageCode = null,
    Object? page = null,
    Object? count = null,
  }) {
    return _then(_GeocodeRequestParams(
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      centerLongitude: freezed == centerLongitude
          ? _self.centerLongitude
          : centerLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      centerLatitude: freezed == centerLatitude
          ? _self.centerLatitude
          : centerLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      filter: freezed == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
      languageCode: null == languageCode
          ? _self.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
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

// dart format on
