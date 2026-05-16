// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_spot_status_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddSpotStatusRequestModel {
  String get description;
  List<String> get statuses;

  /// Create a copy of AddSpotStatusRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddSpotStatusRequestModelCopyWith<AddSpotStatusRequestModel> get copyWith =>
      _$AddSpotStatusRequestModelCopyWithImpl<AddSpotStatusRequestModel>(
          this as AddSpotStatusRequestModel, _$identity);

  /// Serializes this AddSpotStatusRequestModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddSpotStatusRequestModel &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.statuses, statuses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, description, const DeepCollectionEquality().hash(statuses));

  @override
  String toString() {
    return 'AddSpotStatusRequestModel(description: $description, statuses: $statuses)';
  }
}

/// @nodoc
abstract mixin class $AddSpotStatusRequestModelCopyWith<$Res> {
  factory $AddSpotStatusRequestModelCopyWith(AddSpotStatusRequestModel value,
          $Res Function(AddSpotStatusRequestModel) _then) =
      _$AddSpotStatusRequestModelCopyWithImpl;
  @useResult
  $Res call({String description, List<String> statuses});
}

/// @nodoc
class _$AddSpotStatusRequestModelCopyWithImpl<$Res>
    implements $AddSpotStatusRequestModelCopyWith<$Res> {
  _$AddSpotStatusRequestModelCopyWithImpl(this._self, this._then);

  final AddSpotStatusRequestModel _self;
  final $Res Function(AddSpotStatusRequestModel) _then;

  /// Create a copy of AddSpotStatusRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? statuses = null,
  }) {
    return _then(_self.copyWith(
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

/// Adds pattern-matching-related methods to [AddSpotStatusRequestModel].
extension AddSpotStatusRequestModelPatterns on AddSpotStatusRequestModel {
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
    TResult Function(_AddSpotStatusRequestModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AddSpotStatusRequestModel() when $default != null:
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
    TResult Function(_AddSpotStatusRequestModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddSpotStatusRequestModel():
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
    TResult? Function(_AddSpotStatusRequestModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddSpotStatusRequestModel() when $default != null:
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
    TResult Function(String description, List<String> statuses)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AddSpotStatusRequestModel() when $default != null:
        return $default(_that.description, _that.statuses);
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
    TResult Function(String description, List<String> statuses) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddSpotStatusRequestModel():
        return $default(_that.description, _that.statuses);
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
    TResult? Function(String description, List<String> statuses)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddSpotStatusRequestModel() when $default != null:
        return $default(_that.description, _that.statuses);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AddSpotStatusRequestModel implements AddSpotStatusRequestModel {
  const _AddSpotStatusRequestModel(
      {required this.description, required final List<String> statuses})
      : _statuses = statuses;
  factory _AddSpotStatusRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AddSpotStatusRequestModelFromJson(json);

  @override
  final String description;
  final List<String> _statuses;
  @override
  List<String> get statuses {
    if (_statuses is EqualUnmodifiableListView) return _statuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statuses);
  }

  /// Create a copy of AddSpotStatusRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddSpotStatusRequestModelCopyWith<_AddSpotStatusRequestModel>
      get copyWith =>
          __$AddSpotStatusRequestModelCopyWithImpl<_AddSpotStatusRequestModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AddSpotStatusRequestModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddSpotStatusRequestModel &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._statuses, _statuses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, description, const DeepCollectionEquality().hash(_statuses));

  @override
  String toString() {
    return 'AddSpotStatusRequestModel(description: $description, statuses: $statuses)';
  }
}

/// @nodoc
abstract mixin class _$AddSpotStatusRequestModelCopyWith<$Res>
    implements $AddSpotStatusRequestModelCopyWith<$Res> {
  factory _$AddSpotStatusRequestModelCopyWith(_AddSpotStatusRequestModel value,
          $Res Function(_AddSpotStatusRequestModel) _then) =
      __$AddSpotStatusRequestModelCopyWithImpl;
  @override
  @useResult
  $Res call({String description, List<String> statuses});
}

/// @nodoc
class __$AddSpotStatusRequestModelCopyWithImpl<$Res>
    implements _$AddSpotStatusRequestModelCopyWith<$Res> {
  __$AddSpotStatusRequestModelCopyWithImpl(this._self, this._then);

  final _AddSpotStatusRequestModel _self;
  final $Res Function(_AddSpotStatusRequestModel) _then;

  /// Create a copy of AddSpotStatusRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? description = null,
    Object? statuses = null,
  }) {
    return _then(_AddSpotStatusRequestModel(
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
