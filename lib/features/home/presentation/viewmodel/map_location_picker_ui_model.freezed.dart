// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_location_picker_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MapLocationPickerUiModel {
  MapLocation? get selectedLocation;
  bool get isLoading;
  String? get errorMessage;

  /// Create a copy of MapLocationPickerUiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MapLocationPickerUiModelCopyWith<MapLocationPickerUiModel> get copyWith =>
      _$MapLocationPickerUiModelCopyWithImpl<MapLocationPickerUiModel>(
          this as MapLocationPickerUiModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MapLocationPickerUiModel &&
            (identical(other.selectedLocation, selectedLocation) ||
                other.selectedLocation == selectedLocation) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedLocation, isLoading, errorMessage);

  @override
  String toString() {
    return 'MapLocationPickerUiModel(selectedLocation: $selectedLocation, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $MapLocationPickerUiModelCopyWith<$Res> {
  factory $MapLocationPickerUiModelCopyWith(MapLocationPickerUiModel value,
          $Res Function(MapLocationPickerUiModel) _then) =
      _$MapLocationPickerUiModelCopyWithImpl;
  @useResult
  $Res call(
      {MapLocation? selectedLocation, bool isLoading, String? errorMessage});

  $MapLocationCopyWith<$Res>? get selectedLocation;
}

/// @nodoc
class _$MapLocationPickerUiModelCopyWithImpl<$Res>
    implements $MapLocationPickerUiModelCopyWith<$Res> {
  _$MapLocationPickerUiModelCopyWithImpl(this._self, this._then);

  final MapLocationPickerUiModel _self;
  final $Res Function(MapLocationPickerUiModel) _then;

  /// Create a copy of MapLocationPickerUiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLocation = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      selectedLocation: freezed == selectedLocation
          ? _self.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as MapLocation?,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of MapLocationPickerUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MapLocationCopyWith<$Res>? get selectedLocation {
    if (_self.selectedLocation == null) {
      return null;
    }

    return $MapLocationCopyWith<$Res>(_self.selectedLocation!, (value) {
      return _then(_self.copyWith(selectedLocation: value));
    });
  }
}

/// Adds pattern-matching-related methods to [MapLocationPickerUiModel].
extension MapLocationPickerUiModelPatterns on MapLocationPickerUiModel {
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
    TResult Function(_MapLocationPickerUiModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MapLocationPickerUiModel() when $default != null:
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
    TResult Function(_MapLocationPickerUiModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MapLocationPickerUiModel():
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
    TResult? Function(_MapLocationPickerUiModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MapLocationPickerUiModel() when $default != null:
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
    TResult Function(MapLocation? selectedLocation, bool isLoading,
            String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MapLocationPickerUiModel() when $default != null:
        return $default(
            _that.selectedLocation, _that.isLoading, _that.errorMessage);
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
            MapLocation? selectedLocation, bool isLoading, String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MapLocationPickerUiModel():
        return $default(
            _that.selectedLocation, _that.isLoading, _that.errorMessage);
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
    TResult? Function(MapLocation? selectedLocation, bool isLoading,
            String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MapLocationPickerUiModel() when $default != null:
        return $default(
            _that.selectedLocation, _that.isLoading, _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MapLocationPickerUiModel implements MapLocationPickerUiModel {
  const _MapLocationPickerUiModel(
      {this.selectedLocation, this.isLoading = false, this.errorMessage});

  @override
  final MapLocation? selectedLocation;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  /// Create a copy of MapLocationPickerUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MapLocationPickerUiModelCopyWith<_MapLocationPickerUiModel> get copyWith =>
      __$MapLocationPickerUiModelCopyWithImpl<_MapLocationPickerUiModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MapLocationPickerUiModel &&
            (identical(other.selectedLocation, selectedLocation) ||
                other.selectedLocation == selectedLocation) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedLocation, isLoading, errorMessage);

  @override
  String toString() {
    return 'MapLocationPickerUiModel(selectedLocation: $selectedLocation, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$MapLocationPickerUiModelCopyWith<$Res>
    implements $MapLocationPickerUiModelCopyWith<$Res> {
  factory _$MapLocationPickerUiModelCopyWith(_MapLocationPickerUiModel value,
          $Res Function(_MapLocationPickerUiModel) _then) =
      __$MapLocationPickerUiModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {MapLocation? selectedLocation, bool isLoading, String? errorMessage});

  @override
  $MapLocationCopyWith<$Res>? get selectedLocation;
}

/// @nodoc
class __$MapLocationPickerUiModelCopyWithImpl<$Res>
    implements _$MapLocationPickerUiModelCopyWith<$Res> {
  __$MapLocationPickerUiModelCopyWithImpl(this._self, this._then);

  final _MapLocationPickerUiModel _self;
  final $Res Function(_MapLocationPickerUiModel) _then;

  /// Create a copy of MapLocationPickerUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? selectedLocation = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_MapLocationPickerUiModel(
      selectedLocation: freezed == selectedLocation
          ? _self.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as MapLocation?,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of MapLocationPickerUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MapLocationCopyWith<$Res>? get selectedLocation {
    if (_self.selectedLocation == null) {
      return null;
    }

    return $MapLocationCopyWith<$Res>(_self.selectedLocation!, (value) {
      return _then(_self.copyWith(selectedLocation: value));
    });
  }
}

// dart format on
