// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_spot_address_picker_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NewSpotAddressPickerUiModel {
  MapLocation? get selectedLocation;
  bool get isLoading;
  bool get isInitializingLocation;
  String? get errorMessage;

  /// Create a copy of NewSpotAddressPickerUiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NewSpotAddressPickerUiModelCopyWith<NewSpotAddressPickerUiModel>
      get copyWith => _$NewSpotAddressPickerUiModelCopyWithImpl<
              NewSpotAddressPickerUiModel>(
          this as NewSpotAddressPickerUiModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewSpotAddressPickerUiModel &&
            (identical(other.selectedLocation, selectedLocation) ||
                other.selectedLocation == selectedLocation) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isInitializingLocation, isInitializingLocation) ||
                other.isInitializingLocation == isInitializingLocation) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedLocation, isLoading,
      isInitializingLocation, errorMessage);

  @override
  String toString() {
    return 'NewSpotAddressPickerUiModel(selectedLocation: $selectedLocation, isLoading: $isLoading, isInitializingLocation: $isInitializingLocation, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $NewSpotAddressPickerUiModelCopyWith<$Res> {
  factory $NewSpotAddressPickerUiModelCopyWith(
          NewSpotAddressPickerUiModel value,
          $Res Function(NewSpotAddressPickerUiModel) _then) =
      _$NewSpotAddressPickerUiModelCopyWithImpl;
  @useResult
  $Res call(
      {MapLocation? selectedLocation,
      bool isLoading,
      bool isInitializingLocation,
      String? errorMessage});

  $MapLocationCopyWith<$Res>? get selectedLocation;
}

/// @nodoc
class _$NewSpotAddressPickerUiModelCopyWithImpl<$Res>
    implements $NewSpotAddressPickerUiModelCopyWith<$Res> {
  _$NewSpotAddressPickerUiModelCopyWithImpl(this._self, this._then);

  final NewSpotAddressPickerUiModel _self;
  final $Res Function(NewSpotAddressPickerUiModel) _then;

  /// Create a copy of NewSpotAddressPickerUiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLocation = freezed,
    Object? isLoading = null,
    Object? isInitializingLocation = null,
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
      isInitializingLocation: null == isInitializingLocation
          ? _self.isInitializingLocation
          : isInitializingLocation // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of NewSpotAddressPickerUiModel
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

/// Adds pattern-matching-related methods to [NewSpotAddressPickerUiModel].
extension NewSpotAddressPickerUiModelPatterns on NewSpotAddressPickerUiModel {
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
    TResult Function(_NewSpotAddressPickerUiModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NewSpotAddressPickerUiModel() when $default != null:
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
    TResult Function(_NewSpotAddressPickerUiModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NewSpotAddressPickerUiModel():
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
    TResult? Function(_NewSpotAddressPickerUiModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NewSpotAddressPickerUiModel() when $default != null:
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
            bool isInitializingLocation, String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NewSpotAddressPickerUiModel() when $default != null:
        return $default(_that.selectedLocation, _that.isLoading,
            _that.isInitializingLocation, _that.errorMessage);
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
    TResult Function(MapLocation? selectedLocation, bool isLoading,
            bool isInitializingLocation, String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NewSpotAddressPickerUiModel():
        return $default(_that.selectedLocation, _that.isLoading,
            _that.isInitializingLocation, _that.errorMessage);
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
            bool isInitializingLocation, String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NewSpotAddressPickerUiModel() when $default != null:
        return $default(_that.selectedLocation, _that.isLoading,
            _that.isInitializingLocation, _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _NewSpotAddressPickerUiModel implements NewSpotAddressPickerUiModel {
  const _NewSpotAddressPickerUiModel(
      {this.selectedLocation,
      this.isLoading = false,
      this.isInitializingLocation = false,
      this.errorMessage});

  @override
  final MapLocation? selectedLocation;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isInitializingLocation;
  @override
  final String? errorMessage;

  /// Create a copy of NewSpotAddressPickerUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NewSpotAddressPickerUiModelCopyWith<_NewSpotAddressPickerUiModel>
      get copyWith => __$NewSpotAddressPickerUiModelCopyWithImpl<
          _NewSpotAddressPickerUiModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewSpotAddressPickerUiModel &&
            (identical(other.selectedLocation, selectedLocation) ||
                other.selectedLocation == selectedLocation) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isInitializingLocation, isInitializingLocation) ||
                other.isInitializingLocation == isInitializingLocation) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedLocation, isLoading,
      isInitializingLocation, errorMessage);

  @override
  String toString() {
    return 'NewSpotAddressPickerUiModel(selectedLocation: $selectedLocation, isLoading: $isLoading, isInitializingLocation: $isInitializingLocation, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$NewSpotAddressPickerUiModelCopyWith<$Res>
    implements $NewSpotAddressPickerUiModelCopyWith<$Res> {
  factory _$NewSpotAddressPickerUiModelCopyWith(
          _NewSpotAddressPickerUiModel value,
          $Res Function(_NewSpotAddressPickerUiModel) _then) =
      __$NewSpotAddressPickerUiModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {MapLocation? selectedLocation,
      bool isLoading,
      bool isInitializingLocation,
      String? errorMessage});

  @override
  $MapLocationCopyWith<$Res>? get selectedLocation;
}

/// @nodoc
class __$NewSpotAddressPickerUiModelCopyWithImpl<$Res>
    implements _$NewSpotAddressPickerUiModelCopyWith<$Res> {
  __$NewSpotAddressPickerUiModelCopyWithImpl(this._self, this._then);

  final _NewSpotAddressPickerUiModel _self;
  final $Res Function(_NewSpotAddressPickerUiModel) _then;

  /// Create a copy of NewSpotAddressPickerUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? selectedLocation = freezed,
    Object? isLoading = null,
    Object? isInitializingLocation = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_NewSpotAddressPickerUiModel(
      selectedLocation: freezed == selectedLocation
          ? _self.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as MapLocation?,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isInitializingLocation: null == isInitializingLocation
          ? _self.isInitializingLocation
          : isInitializingLocation // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of NewSpotAddressPickerUiModel
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
