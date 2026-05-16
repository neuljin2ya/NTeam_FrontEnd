// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spot_status_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpotStatusListModel {
  @FlexibleIntConverter()
  int get spotStatusListId;
  @JsonKey(defaultValue: '')
  String get description;
  List<String> get statuses;

  /// Create a copy of SpotStatusListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpotStatusListModelCopyWith<SpotStatusListModel> get copyWith =>
      _$SpotStatusListModelCopyWithImpl<SpotStatusListModel>(
          this as SpotStatusListModel, _$identity);

  /// Serializes this SpotStatusListModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpotStatusListModel &&
            (identical(other.spotStatusListId, spotStatusListId) ||
                other.spotStatusListId == spotStatusListId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.statuses, statuses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, spotStatusListId, description,
      const DeepCollectionEquality().hash(statuses));

  @override
  String toString() {
    return 'SpotStatusListModel(spotStatusListId: $spotStatusListId, description: $description, statuses: $statuses)';
  }
}

/// @nodoc
abstract mixin class $SpotStatusListModelCopyWith<$Res> {
  factory $SpotStatusListModelCopyWith(
          SpotStatusListModel value, $Res Function(SpotStatusListModel) _then) =
      _$SpotStatusListModelCopyWithImpl;
  @useResult
  $Res call(
      {@FlexibleIntConverter() int spotStatusListId,
      @JsonKey(defaultValue: '') String description,
      List<String> statuses});
}

/// @nodoc
class _$SpotStatusListModelCopyWithImpl<$Res>
    implements $SpotStatusListModelCopyWith<$Res> {
  _$SpotStatusListModelCopyWithImpl(this._self, this._then);

  final SpotStatusListModel _self;
  final $Res Function(SpotStatusListModel) _then;

  /// Create a copy of SpotStatusListModel
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

/// Adds pattern-matching-related methods to [SpotStatusListModel].
extension SpotStatusListModelPatterns on SpotStatusListModel {
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
    TResult Function(_SpotStatusListModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SpotStatusListModel() when $default != null:
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
    TResult Function(_SpotStatusListModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpotStatusListModel():
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
    TResult? Function(_SpotStatusListModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpotStatusListModel() when $default != null:
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
            @FlexibleIntConverter() int spotStatusListId,
            @JsonKey(defaultValue: '') String description,
            List<String> statuses)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SpotStatusListModel() when $default != null:
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
            @FlexibleIntConverter() int spotStatusListId,
            @JsonKey(defaultValue: '') String description,
            List<String> statuses)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpotStatusListModel():
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
            @FlexibleIntConverter() int spotStatusListId,
            @JsonKey(defaultValue: '') String description,
            List<String> statuses)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpotStatusListModel() when $default != null:
        return $default(
            _that.spotStatusListId, _that.description, _that.statuses);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SpotStatusListModel implements SpotStatusListModel {
  const _SpotStatusListModel(
      {@FlexibleIntConverter() required this.spotStatusListId,
      @JsonKey(defaultValue: '') this.description = '',
      final List<String> statuses = const <String>[]})
      : _statuses = statuses;
  factory _SpotStatusListModel.fromJson(Map<String, dynamic> json) =>
      _$SpotStatusListModelFromJson(json);

  @override
  @FlexibleIntConverter()
  final int spotStatusListId;
  @override
  @JsonKey(defaultValue: '')
  final String description;
  final List<String> _statuses;
  @override
  @JsonKey()
  List<String> get statuses {
    if (_statuses is EqualUnmodifiableListView) return _statuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statuses);
  }

  /// Create a copy of SpotStatusListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SpotStatusListModelCopyWith<_SpotStatusListModel> get copyWith =>
      __$SpotStatusListModelCopyWithImpl<_SpotStatusListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SpotStatusListModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpotStatusListModel &&
            (identical(other.spotStatusListId, spotStatusListId) ||
                other.spotStatusListId == spotStatusListId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._statuses, _statuses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, spotStatusListId, description,
      const DeepCollectionEquality().hash(_statuses));

  @override
  String toString() {
    return 'SpotStatusListModel(spotStatusListId: $spotStatusListId, description: $description, statuses: $statuses)';
  }
}

/// @nodoc
abstract mixin class _$SpotStatusListModelCopyWith<$Res>
    implements $SpotStatusListModelCopyWith<$Res> {
  factory _$SpotStatusListModelCopyWith(_SpotStatusListModel value,
          $Res Function(_SpotStatusListModel) _then) =
      __$SpotStatusListModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@FlexibleIntConverter() int spotStatusListId,
      @JsonKey(defaultValue: '') String description,
      List<String> statuses});
}

/// @nodoc
class __$SpotStatusListModelCopyWithImpl<$Res>
    implements _$SpotStatusListModelCopyWith<$Res> {
  __$SpotStatusListModelCopyWithImpl(this._self, this._then);

  final _SpotStatusListModel _self;
  final $Res Function(_SpotStatusListModel) _then;

  /// Create a copy of SpotStatusListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? spotStatusListId = null,
    Object? description = null,
    Object? statuses = null,
  }) {
    return _then(_SpotStatusListModel(
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
