// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_search_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocalSearchResponseModel {
  List<LocalSearchItemModel> get items;
  int get total;
  int get start;
  int get display;

  /// Create a copy of LocalSearchResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocalSearchResponseModelCopyWith<LocalSearchResponseModel> get copyWith =>
      _$LocalSearchResponseModelCopyWithImpl<LocalSearchResponseModel>(
          this as LocalSearchResponseModel, _$identity);

  /// Serializes this LocalSearchResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocalSearchResponseModel &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.display, display) || other.display == display));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(items), total, start, display);

  @override
  String toString() {
    return 'LocalSearchResponseModel(items: $items, total: $total, start: $start, display: $display)';
  }
}

/// @nodoc
abstract mixin class $LocalSearchResponseModelCopyWith<$Res> {
  factory $LocalSearchResponseModelCopyWith(LocalSearchResponseModel value,
          $Res Function(LocalSearchResponseModel) _then) =
      _$LocalSearchResponseModelCopyWithImpl;
  @useResult
  $Res call(
      {List<LocalSearchItemModel> items, int total, int start, int display});
}

/// @nodoc
class _$LocalSearchResponseModelCopyWithImpl<$Res>
    implements $LocalSearchResponseModelCopyWith<$Res> {
  _$LocalSearchResponseModelCopyWithImpl(this._self, this._then);

  final LocalSearchResponseModel _self;
  final $Res Function(LocalSearchResponseModel) _then;

  /// Create a copy of LocalSearchResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = null,
    Object? start = null,
    Object? display = null,
  }) {
    return _then(_self.copyWith(
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<LocalSearchItemModel>,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      start: null == start
          ? _self.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      display: null == display
          ? _self.display
          : display // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [LocalSearchResponseModel].
extension LocalSearchResponseModelPatterns on LocalSearchResponseModel {
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
    TResult Function(_LocalSearchResponseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LocalSearchResponseModel() when $default != null:
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
    TResult Function(_LocalSearchResponseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocalSearchResponseModel():
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
    TResult? Function(_LocalSearchResponseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocalSearchResponseModel() when $default != null:
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
    TResult Function(List<LocalSearchItemModel> items, int total, int start,
            int display)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LocalSearchResponseModel() when $default != null:
        return $default(_that.items, _that.total, _that.start, _that.display);
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
            List<LocalSearchItemModel> items, int total, int start, int display)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocalSearchResponseModel():
        return $default(_that.items, _that.total, _that.start, _that.display);
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
    TResult? Function(List<LocalSearchItemModel> items, int total, int start,
            int display)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocalSearchResponseModel() when $default != null:
        return $default(_that.items, _that.total, _that.start, _that.display);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LocalSearchResponseModel implements LocalSearchResponseModel {
  const _LocalSearchResponseModel(
      {final List<LocalSearchItemModel> items = const <LocalSearchItemModel>[],
      this.total = 0,
      this.start = 1,
      this.display = 0})
      : _items = items;
  factory _LocalSearchResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LocalSearchResponseModelFromJson(json);

  final List<LocalSearchItemModel> _items;
  @override
  @JsonKey()
  List<LocalSearchItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey()
  final int start;
  @override
  @JsonKey()
  final int display;

  /// Create a copy of LocalSearchResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LocalSearchResponseModelCopyWith<_LocalSearchResponseModel> get copyWith =>
      __$LocalSearchResponseModelCopyWithImpl<_LocalSearchResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LocalSearchResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocalSearchResponseModel &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.display, display) || other.display == display));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_items), total, start, display);

  @override
  String toString() {
    return 'LocalSearchResponseModel(items: $items, total: $total, start: $start, display: $display)';
  }
}

/// @nodoc
abstract mixin class _$LocalSearchResponseModelCopyWith<$Res>
    implements $LocalSearchResponseModelCopyWith<$Res> {
  factory _$LocalSearchResponseModelCopyWith(_LocalSearchResponseModel value,
          $Res Function(_LocalSearchResponseModel) _then) =
      __$LocalSearchResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<LocalSearchItemModel> items, int total, int start, int display});
}

/// @nodoc
class __$LocalSearchResponseModelCopyWithImpl<$Res>
    implements _$LocalSearchResponseModelCopyWith<$Res> {
  __$LocalSearchResponseModelCopyWithImpl(this._self, this._then);

  final _LocalSearchResponseModel _self;
  final $Res Function(_LocalSearchResponseModel) _then;

  /// Create a copy of LocalSearchResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? items = null,
    Object? total = null,
    Object? start = null,
    Object? display = null,
  }) {
    return _then(_LocalSearchResponseModel(
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<LocalSearchItemModel>,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      start: null == start
          ? _self.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      display: null == display
          ? _self.display
          : display // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$LocalSearchItemModel {
  String get title;
  String get link;
  String get category;
  String get description;
  String get telephone;
  String get address;
  String get roadAddress;
  String get mapx;
  String get mapy;

  /// Create a copy of LocalSearchItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocalSearchItemModelCopyWith<LocalSearchItemModel> get copyWith =>
      _$LocalSearchItemModelCopyWithImpl<LocalSearchItemModel>(
          this as LocalSearchItemModel, _$identity);

  /// Serializes this LocalSearchItemModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocalSearchItemModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.telephone, telephone) ||
                other.telephone == telephone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.roadAddress, roadAddress) ||
                other.roadAddress == roadAddress) &&
            (identical(other.mapx, mapx) || other.mapx == mapx) &&
            (identical(other.mapy, mapy) || other.mapy == mapy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, link, category,
      description, telephone, address, roadAddress, mapx, mapy);

  @override
  String toString() {
    return 'LocalSearchItemModel(title: $title, link: $link, category: $category, description: $description, telephone: $telephone, address: $address, roadAddress: $roadAddress, mapx: $mapx, mapy: $mapy)';
  }
}

/// @nodoc
abstract mixin class $LocalSearchItemModelCopyWith<$Res> {
  factory $LocalSearchItemModelCopyWith(LocalSearchItemModel value,
          $Res Function(LocalSearchItemModel) _then) =
      _$LocalSearchItemModelCopyWithImpl;
  @useResult
  $Res call(
      {String title,
      String link,
      String category,
      String description,
      String telephone,
      String address,
      String roadAddress,
      String mapx,
      String mapy});
}

/// @nodoc
class _$LocalSearchItemModelCopyWithImpl<$Res>
    implements $LocalSearchItemModelCopyWith<$Res> {
  _$LocalSearchItemModelCopyWithImpl(this._self, this._then);

  final LocalSearchItemModel _self;
  final $Res Function(LocalSearchItemModel) _then;

  /// Create a copy of LocalSearchItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? category = null,
    Object? description = null,
    Object? telephone = null,
    Object? address = null,
    Object? roadAddress = null,
    Object? mapx = null,
    Object? mapy = null,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _self.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      telephone: null == telephone
          ? _self.telephone
          : telephone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      roadAddress: null == roadAddress
          ? _self.roadAddress
          : roadAddress // ignore: cast_nullable_to_non_nullable
              as String,
      mapx: null == mapx
          ? _self.mapx
          : mapx // ignore: cast_nullable_to_non_nullable
              as String,
      mapy: null == mapy
          ? _self.mapy
          : mapy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [LocalSearchItemModel].
extension LocalSearchItemModelPatterns on LocalSearchItemModel {
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
    TResult Function(_LocalSearchItemModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LocalSearchItemModel() when $default != null:
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
    TResult Function(_LocalSearchItemModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocalSearchItemModel():
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
    TResult? Function(_LocalSearchItemModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocalSearchItemModel() when $default != null:
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
            String title,
            String link,
            String category,
            String description,
            String telephone,
            String address,
            String roadAddress,
            String mapx,
            String mapy)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LocalSearchItemModel() when $default != null:
        return $default(
            _that.title,
            _that.link,
            _that.category,
            _that.description,
            _that.telephone,
            _that.address,
            _that.roadAddress,
            _that.mapx,
            _that.mapy);
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
            String title,
            String link,
            String category,
            String description,
            String telephone,
            String address,
            String roadAddress,
            String mapx,
            String mapy)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocalSearchItemModel():
        return $default(
            _that.title,
            _that.link,
            _that.category,
            _that.description,
            _that.telephone,
            _that.address,
            _that.roadAddress,
            _that.mapx,
            _that.mapy);
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
            String title,
            String link,
            String category,
            String description,
            String telephone,
            String address,
            String roadAddress,
            String mapx,
            String mapy)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocalSearchItemModel() when $default != null:
        return $default(
            _that.title,
            _that.link,
            _that.category,
            _that.description,
            _that.telephone,
            _that.address,
            _that.roadAddress,
            _that.mapx,
            _that.mapy);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LocalSearchItemModel extends LocalSearchItemModel {
  const _LocalSearchItemModel(
      {this.title = '',
      this.link = '',
      this.category = '',
      this.description = '',
      this.telephone = '',
      this.address = '',
      this.roadAddress = '',
      this.mapx = '',
      this.mapy = ''})
      : super._();
  factory _LocalSearchItemModel.fromJson(Map<String, dynamic> json) =>
      _$LocalSearchItemModelFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String link;
  @override
  @JsonKey()
  final String category;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String telephone;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String roadAddress;
  @override
  @JsonKey()
  final String mapx;
  @override
  @JsonKey()
  final String mapy;

  /// Create a copy of LocalSearchItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LocalSearchItemModelCopyWith<_LocalSearchItemModel> get copyWith =>
      __$LocalSearchItemModelCopyWithImpl<_LocalSearchItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LocalSearchItemModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocalSearchItemModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.telephone, telephone) ||
                other.telephone == telephone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.roadAddress, roadAddress) ||
                other.roadAddress == roadAddress) &&
            (identical(other.mapx, mapx) || other.mapx == mapx) &&
            (identical(other.mapy, mapy) || other.mapy == mapy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, link, category,
      description, telephone, address, roadAddress, mapx, mapy);

  @override
  String toString() {
    return 'LocalSearchItemModel(title: $title, link: $link, category: $category, description: $description, telephone: $telephone, address: $address, roadAddress: $roadAddress, mapx: $mapx, mapy: $mapy)';
  }
}

/// @nodoc
abstract mixin class _$LocalSearchItemModelCopyWith<$Res>
    implements $LocalSearchItemModelCopyWith<$Res> {
  factory _$LocalSearchItemModelCopyWith(_LocalSearchItemModel value,
          $Res Function(_LocalSearchItemModel) _then) =
      __$LocalSearchItemModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String title,
      String link,
      String category,
      String description,
      String telephone,
      String address,
      String roadAddress,
      String mapx,
      String mapy});
}

/// @nodoc
class __$LocalSearchItemModelCopyWithImpl<$Res>
    implements _$LocalSearchItemModelCopyWith<$Res> {
  __$LocalSearchItemModelCopyWithImpl(this._self, this._then);

  final _LocalSearchItemModel _self;
  final $Res Function(_LocalSearchItemModel) _then;

  /// Create a copy of LocalSearchItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? category = null,
    Object? description = null,
    Object? telephone = null,
    Object? address = null,
    Object? roadAddress = null,
    Object? mapx = null,
    Object? mapy = null,
  }) {
    return _then(_LocalSearchItemModel(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _self.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      telephone: null == telephone
          ? _self.telephone
          : telephone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      roadAddress: null == roadAddress
          ? _self.roadAddress
          : roadAddress // ignore: cast_nullable_to_non_nullable
              as String,
      mapx: null == mapx
          ? _self.mapx
          : mapx // ignore: cast_nullable_to_non_nullable
              as String,
      mapy: null == mapy
          ? _self.mapy
          : mapy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
