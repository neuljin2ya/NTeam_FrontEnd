// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spot_status_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpotStatusList {
  int get spotStatusListId;
  String get description;
  List<String> get statuses;

  /// Create a copy of SpotStatusList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpotStatusListCopyWith<SpotStatusList> get copyWith =>
      _$SpotStatusListCopyWithImpl<SpotStatusList>(
          this as SpotStatusList, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpotStatusList &&
            (identical(other.spotStatusListId, spotStatusListId) ||
                other.spotStatusListId == spotStatusListId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.statuses, statuses));
  }

  @override
  int get hashCode => Object.hash(runtimeType, spotStatusListId, description,
      const DeepCollectionEquality().hash(statuses));

  @override
  String toString() {
    return 'SpotStatusList(spotStatusListId: $spotStatusListId, description: $description, statuses: $statuses)';
  }
}

/// @nodoc
abstract mixin class $SpotStatusListCopyWith<$Res> {
  factory $SpotStatusListCopyWith(
          SpotStatusList value, $Res Function(SpotStatusList) _then) =
      _$SpotStatusListCopyWithImpl;
  @useResult
  $Res call({int spotStatusListId, String description, List<String> statuses});
}

/// @nodoc
class _$SpotStatusListCopyWithImpl<$Res>
    implements $SpotStatusListCopyWith<$Res> {
  _$SpotStatusListCopyWithImpl(this._self, this._then);

  final SpotStatusList _self;
  final $Res Function(SpotStatusList) _then;

  /// Create a copy of SpotStatusList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotStatusListId = null,
    Object? description = null,
    Object? statuses = null,
  }) {
    return _then(_self.copyWith(
      spotStatusListId: null == spotStatusListId
          ? _self.spotStatusListId
          : spotStatusListId // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      statuses: null == statuses
          ? _self.statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [SpotStatusList].
extension SpotStatusListPatterns on SpotStatusList {
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
    TResult Function(_SpotStatusList value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SpotStatusList() when $default != null:
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
    TResult Function(_SpotStatusList value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpotStatusList():
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
    TResult? Function(_SpotStatusList value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpotStatusList() when $default != null:
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
            int spotStatusListId, String description, List<String> statuses)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SpotStatusList() when $default != null:
        return $default(
            _that.spotStatusListId, _that.description, _that.statuses);
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
            int spotStatusListId, String description, List<String> statuses)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpotStatusList():
        return $default(
            _that.spotStatusListId, _that.description, _that.statuses);
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
            int spotStatusListId, String description, List<String> statuses)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpotStatusList() when $default != null:
        return $default(
            _that.spotStatusListId, _that.description, _that.statuses);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SpotStatusList implements SpotStatusList {
  const _SpotStatusList(
      {required this.spotStatusListId,
      required this.description,
      final List<String> statuses = const <String>[]})
      : _statuses = statuses;

  @override
  final int spotStatusListId;
  @override
  final String description;
  final List<String> _statuses;
  @override
  @JsonKey()
  List<String> get statuses {
    if (_statuses is EqualUnmodifiableListView) return _statuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statuses);
  }

  /// Create a copy of SpotStatusList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SpotStatusListCopyWith<_SpotStatusList> get copyWith =>
      __$SpotStatusListCopyWithImpl<_SpotStatusList>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpotStatusList &&
            (identical(other.spotStatusListId, spotStatusListId) ||
                other.spotStatusListId == spotStatusListId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._statuses, _statuses));
  }

  @override
  int get hashCode => Object.hash(runtimeType, spotStatusListId, description,
      const DeepCollectionEquality().hash(_statuses));

  @override
  String toString() {
    return 'SpotStatusList(spotStatusListId: $spotStatusListId, description: $description, statuses: $statuses)';
  }
}

/// @nodoc
abstract mixin class _$SpotStatusListCopyWith<$Res>
    implements $SpotStatusListCopyWith<$Res> {
  factory _$SpotStatusListCopyWith(
          _SpotStatusList value, $Res Function(_SpotStatusList) _then) =
      __$SpotStatusListCopyWithImpl;
  @override
  @useResult
  $Res call({int spotStatusListId, String description, List<String> statuses});
}

/// @nodoc
class __$SpotStatusListCopyWithImpl<$Res>
    implements _$SpotStatusListCopyWith<$Res> {
  __$SpotStatusListCopyWithImpl(this._self, this._then);

  final _SpotStatusList _self;
  final $Res Function(_SpotStatusList) _then;

  /// Create a copy of SpotStatusList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? spotStatusListId = null,
    Object? description = null,
    Object? statuses = null,
  }) {
    return _then(_SpotStatusList(
      spotStatusListId: null == spotStatusListId
          ? _self.spotStatusListId
          : spotStatusListId // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      statuses: null == statuses
          ? _self._statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
