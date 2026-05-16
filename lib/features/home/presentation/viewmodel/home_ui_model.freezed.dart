// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeUiModel {
  List<Spot> get spots;
  bool get isLoadingSpots;
  bool get isSearchingLocation;
  String? get spotsErrorMessage;

  /// Create a copy of HomeUiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeUiModelCopyWith<HomeUiModel> get copyWith =>
      _$HomeUiModelCopyWithImpl<HomeUiModel>(this as HomeUiModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeUiModel &&
            const DeepCollectionEquality().equals(other.spots, spots) &&
            (identical(other.isLoadingSpots, isLoadingSpots) ||
                other.isLoadingSpots == isLoadingSpots) &&
            (identical(other.isSearchingLocation, isSearchingLocation) ||
                other.isSearchingLocation == isSearchingLocation) &&
            (identical(other.spotsErrorMessage, spotsErrorMessage) ||
                other.spotsErrorMessage == spotsErrorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(spots),
      isLoadingSpots,
      isSearchingLocation,
      spotsErrorMessage);

  @override
  String toString() {
    return 'HomeUiModel(spots: $spots, isLoadingSpots: $isLoadingSpots, isSearchingLocation: $isSearchingLocation, spotsErrorMessage: $spotsErrorMessage)';
  }
}

/// @nodoc
abstract mixin class $HomeUiModelCopyWith<$Res> {
  factory $HomeUiModelCopyWith(
          HomeUiModel value, $Res Function(HomeUiModel) _then) =
      _$HomeUiModelCopyWithImpl;
  @useResult
  $Res call(
      {List<Spot> spots,
      bool isLoadingSpots,
      bool isSearchingLocation,
      String? spotsErrorMessage});
}

/// @nodoc
class _$HomeUiModelCopyWithImpl<$Res> implements $HomeUiModelCopyWith<$Res> {
  _$HomeUiModelCopyWithImpl(this._self, this._then);

  final HomeUiModel _self;
  final $Res Function(HomeUiModel) _then;

  /// Create a copy of HomeUiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spots = null,
    Object? isLoadingSpots = null,
    Object? isSearchingLocation = null,
    Object? spotsErrorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      spots: null == spots
          ? _self.spots
          : spots // ignore: cast_nullable_to_non_nullable
              as List<Spot>,
      isLoadingSpots: null == isLoadingSpots
          ? _self.isLoadingSpots
          : isLoadingSpots // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearchingLocation: null == isSearchingLocation
          ? _self.isSearchingLocation
          : isSearchingLocation // ignore: cast_nullable_to_non_nullable
              as bool,
      spotsErrorMessage: freezed == spotsErrorMessage
          ? _self.spotsErrorMessage
          : spotsErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [HomeUiModel].
extension HomeUiModelPatterns on HomeUiModel {
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
    TResult Function(_HomeUiModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HomeUiModel() when $default != null:
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
    TResult Function(_HomeUiModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeUiModel():
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
    TResult? Function(_HomeUiModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeUiModel() when $default != null:
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
    TResult Function(List<Spot> spots, bool isLoadingSpots,
            bool isSearchingLocation, String? spotsErrorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HomeUiModel() when $default != null:
        return $default(_that.spots, _that.isLoadingSpots,
            _that.isSearchingLocation, _that.spotsErrorMessage);
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
    TResult Function(List<Spot> spots, bool isLoadingSpots,
            bool isSearchingLocation, String? spotsErrorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeUiModel():
        return $default(_that.spots, _that.isLoadingSpots,
            _that.isSearchingLocation, _that.spotsErrorMessage);
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
    TResult? Function(List<Spot> spots, bool isLoadingSpots,
            bool isSearchingLocation, String? spotsErrorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeUiModel() when $default != null:
        return $default(_that.spots, _that.isLoadingSpots,
            _that.isSearchingLocation, _that.spotsErrorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _HomeUiModel implements HomeUiModel {
  const _HomeUiModel(
      {final List<Spot> spots = const <Spot>[],
      this.isLoadingSpots = false,
      this.isSearchingLocation = false,
      this.spotsErrorMessage})
      : _spots = spots;

  final List<Spot> _spots;
  @override
  @JsonKey()
  List<Spot> get spots {
    if (_spots is EqualUnmodifiableListView) return _spots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spots);
  }

  @override
  @JsonKey()
  final bool isLoadingSpots;
  @override
  @JsonKey()
  final bool isSearchingLocation;
  @override
  final String? spotsErrorMessage;

  /// Create a copy of HomeUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeUiModelCopyWith<_HomeUiModel> get copyWith =>
      __$HomeUiModelCopyWithImpl<_HomeUiModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeUiModel &&
            const DeepCollectionEquality().equals(other._spots, _spots) &&
            (identical(other.isLoadingSpots, isLoadingSpots) ||
                other.isLoadingSpots == isLoadingSpots) &&
            (identical(other.isSearchingLocation, isSearchingLocation) ||
                other.isSearchingLocation == isSearchingLocation) &&
            (identical(other.spotsErrorMessage, spotsErrorMessage) ||
                other.spotsErrorMessage == spotsErrorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_spots),
      isLoadingSpots,
      isSearchingLocation,
      spotsErrorMessage);

  @override
  String toString() {
    return 'HomeUiModel(spots: $spots, isLoadingSpots: $isLoadingSpots, isSearchingLocation: $isSearchingLocation, spotsErrorMessage: $spotsErrorMessage)';
  }
}

/// @nodoc
abstract mixin class _$HomeUiModelCopyWith<$Res>
    implements $HomeUiModelCopyWith<$Res> {
  factory _$HomeUiModelCopyWith(
          _HomeUiModel value, $Res Function(_HomeUiModel) _then) =
      __$HomeUiModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<Spot> spots,
      bool isLoadingSpots,
      bool isSearchingLocation,
      String? spotsErrorMessage});
}

/// @nodoc
class __$HomeUiModelCopyWithImpl<$Res> implements _$HomeUiModelCopyWith<$Res> {
  __$HomeUiModelCopyWithImpl(this._self, this._then);

  final _HomeUiModel _self;
  final $Res Function(_HomeUiModel) _then;

  /// Create a copy of HomeUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? spots = null,
    Object? isLoadingSpots = null,
    Object? isSearchingLocation = null,
    Object? spotsErrorMessage = freezed,
  }) {
    return _then(_HomeUiModel(
      spots: null == spots
          ? _self._spots
          : spots // ignore: cast_nullable_to_non_nullable
              as List<Spot>,
      isLoadingSpots: null == isLoadingSpots
          ? _self.isLoadingSpots
          : isLoadingSpots // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearchingLocation: null == isSearchingLocation
          ? _self.isSearchingLocation
          : isSearchingLocation // ignore: cast_nullable_to_non_nullable
              as bool,
      spotsErrorMessage: freezed == spotsErrorMessage
          ? _self.spotsErrorMessage
          : spotsErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
