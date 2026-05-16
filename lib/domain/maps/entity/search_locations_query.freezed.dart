// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_locations_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchLocationsQuery {
  String get query;
  double? get nearLatitude;
  double? get nearLongitude;
  GeocodeLanguage get language;
  int get page;
  int get count;
  String? get filter;

  /// Create a copy of SearchLocationsQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchLocationsQueryCopyWith<SearchLocationsQuery> get copyWith =>
      _$SearchLocationsQueryCopyWithImpl<SearchLocationsQuery>(
          this as SearchLocationsQuery, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchLocationsQuery &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.nearLatitude, nearLatitude) ||
                other.nearLatitude == nearLatitude) &&
            (identical(other.nearLongitude, nearLongitude) ||
                other.nearLongitude == nearLongitude) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, nearLatitude,
      nearLongitude, language, page, count, filter);

  @override
  String toString() {
    return 'SearchLocationsQuery(query: $query, nearLatitude: $nearLatitude, nearLongitude: $nearLongitude, language: $language, page: $page, count: $count, filter: $filter)';
  }
}

/// @nodoc
abstract mixin class $SearchLocationsQueryCopyWith<$Res> {
  factory $SearchLocationsQueryCopyWith(SearchLocationsQuery value,
          $Res Function(SearchLocationsQuery) _then) =
      _$SearchLocationsQueryCopyWithImpl;
  @useResult
  $Res call(
      {String query,
      double? nearLatitude,
      double? nearLongitude,
      GeocodeLanguage language,
      int page,
      int count,
      String? filter});
}

/// @nodoc
class _$SearchLocationsQueryCopyWithImpl<$Res>
    implements $SearchLocationsQueryCopyWith<$Res> {
  _$SearchLocationsQueryCopyWithImpl(this._self, this._then);

  final SearchLocationsQuery _self;
  final $Res Function(SearchLocationsQuery) _then;

  /// Create a copy of SearchLocationsQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? nearLatitude = freezed,
    Object? nearLongitude = freezed,
    Object? language = null,
    Object? page = null,
    Object? count = null,
    Object? filter = freezed,
  }) {
    return _then(_self.copyWith(
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      nearLatitude: freezed == nearLatitude
          ? _self.nearLatitude
          : nearLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      nearLongitude: freezed == nearLongitude
          ? _self.nearLongitude
          : nearLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      language: null == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as GeocodeLanguage,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      filter: freezed == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SearchLocationsQuery].
extension SearchLocationsQueryPatterns on SearchLocationsQuery {
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
    TResult Function(_SearchLocationsQuery value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchLocationsQuery() when $default != null:
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
    TResult Function(_SearchLocationsQuery value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchLocationsQuery():
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
    TResult? Function(_SearchLocationsQuery value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchLocationsQuery() when $default != null:
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
    TResult Function(String query, double? nearLatitude, double? nearLongitude,
            GeocodeLanguage language, int page, int count, String? filter)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchLocationsQuery() when $default != null:
        return $default(_that.query, _that.nearLatitude, _that.nearLongitude,
            _that.language, _that.page, _that.count, _that.filter);
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
    TResult Function(String query, double? nearLatitude, double? nearLongitude,
            GeocodeLanguage language, int page, int count, String? filter)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchLocationsQuery():
        return $default(_that.query, _that.nearLatitude, _that.nearLongitude,
            _that.language, _that.page, _that.count, _that.filter);
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
    TResult? Function(String query, double? nearLatitude, double? nearLongitude,
            GeocodeLanguage language, int page, int count, String? filter)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchLocationsQuery() when $default != null:
        return $default(_that.query, _that.nearLatitude, _that.nearLongitude,
            _that.language, _that.page, _that.count, _that.filter);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SearchLocationsQuery implements SearchLocationsQuery {
  const _SearchLocationsQuery(
      {required this.query,
      this.nearLatitude,
      this.nearLongitude,
      this.language = GeocodeLanguage.kor,
      this.page = 1,
      this.count = 30,
      this.filter});

  @override
  final String query;
  @override
  final double? nearLatitude;
  @override
  final double? nearLongitude;
  @override
  @JsonKey()
  final GeocodeLanguage language;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int count;
  @override
  final String? filter;

  /// Create a copy of SearchLocationsQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchLocationsQueryCopyWith<_SearchLocationsQuery> get copyWith =>
      __$SearchLocationsQueryCopyWithImpl<_SearchLocationsQuery>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchLocationsQuery &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.nearLatitude, nearLatitude) ||
                other.nearLatitude == nearLatitude) &&
            (identical(other.nearLongitude, nearLongitude) ||
                other.nearLongitude == nearLongitude) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, nearLatitude,
      nearLongitude, language, page, count, filter);

  @override
  String toString() {
    return 'SearchLocationsQuery(query: $query, nearLatitude: $nearLatitude, nearLongitude: $nearLongitude, language: $language, page: $page, count: $count, filter: $filter)';
  }
}

/// @nodoc
abstract mixin class _$SearchLocationsQueryCopyWith<$Res>
    implements $SearchLocationsQueryCopyWith<$Res> {
  factory _$SearchLocationsQueryCopyWith(_SearchLocationsQuery value,
          $Res Function(_SearchLocationsQuery) _then) =
      __$SearchLocationsQueryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String query,
      double? nearLatitude,
      double? nearLongitude,
      GeocodeLanguage language,
      int page,
      int count,
      String? filter});
}

/// @nodoc
class __$SearchLocationsQueryCopyWithImpl<$Res>
    implements _$SearchLocationsQueryCopyWith<$Res> {
  __$SearchLocationsQueryCopyWithImpl(this._self, this._then);

  final _SearchLocationsQuery _self;
  final $Res Function(_SearchLocationsQuery) _then;

  /// Create a copy of SearchLocationsQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? query = null,
    Object? nearLatitude = freezed,
    Object? nearLongitude = freezed,
    Object? language = null,
    Object? page = null,
    Object? count = null,
    Object? filter = freezed,
  }) {
    return _then(_SearchLocationsQuery(
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      nearLatitude: freezed == nearLatitude
          ? _self.nearLatitude
          : nearLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      nearLongitude: freezed == nearLongitude
          ? _self.nearLongitude
          : nearLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      language: null == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as GeocodeLanguage,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      filter: freezed == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
