// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_spot_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NewSpotUiModel {
  String get spotName;
  MapLocation? get selectedLocation;
  DifficultyLevel get difficulty;
  Set<String> get selectedObstacleIds;
  Set<String> get selectedEnvironmentTags;
  bool get isObstacleSectionExpanded;
  String? get captionImagePath;
  String? get captionImgUrl;
  bool get isUploadingCaption;
  NewSpotPhotoSource? get photoSource;
  bool get isSubmitting;
  String? get errorMessage;

  /// Create a copy of NewSpotUiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NewSpotUiModelCopyWith<NewSpotUiModel> get copyWith =>
      _$NewSpotUiModelCopyWithImpl<NewSpotUiModel>(
          this as NewSpotUiModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewSpotUiModel &&
            (identical(other.spotName, spotName) ||
                other.spotName == spotName) &&
            (identical(other.selectedLocation, selectedLocation) ||
                other.selectedLocation == selectedLocation) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            const DeepCollectionEquality()
                .equals(other.selectedObstacleIds, selectedObstacleIds) &&
            const DeepCollectionEquality().equals(
                other.selectedEnvironmentTags, selectedEnvironmentTags) &&
            (identical(other.isObstacleSectionExpanded,
                    isObstacleSectionExpanded) ||
                other.isObstacleSectionExpanded == isObstacleSectionExpanded) &&
            (identical(other.captionImagePath, captionImagePath) ||
                other.captionImagePath == captionImagePath) &&
            (identical(other.captionImgUrl, captionImgUrl) ||
                other.captionImgUrl == captionImgUrl) &&
            (identical(other.isUploadingCaption, isUploadingCaption) ||
                other.isUploadingCaption == isUploadingCaption) &&
            (identical(other.photoSource, photoSource) ||
                other.photoSource == photoSource) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      spotName,
      selectedLocation,
      difficulty,
      const DeepCollectionEquality().hash(selectedObstacleIds),
      const DeepCollectionEquality().hash(selectedEnvironmentTags),
      isObstacleSectionExpanded,
      captionImagePath,
      captionImgUrl,
      isUploadingCaption,
      photoSource,
      isSubmitting,
      errorMessage);

  @override
  String toString() {
    return 'NewSpotUiModel(spotName: $spotName, selectedLocation: $selectedLocation, difficulty: $difficulty, selectedObstacleIds: $selectedObstacleIds, selectedEnvironmentTags: $selectedEnvironmentTags, isObstacleSectionExpanded: $isObstacleSectionExpanded, captionImagePath: $captionImagePath, captionImgUrl: $captionImgUrl, isUploadingCaption: $isUploadingCaption, photoSource: $photoSource, isSubmitting: $isSubmitting, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $NewSpotUiModelCopyWith<$Res> {
  factory $NewSpotUiModelCopyWith(
          NewSpotUiModel value, $Res Function(NewSpotUiModel) _then) =
      _$NewSpotUiModelCopyWithImpl;
  @useResult
  $Res call(
      {String spotName,
      MapLocation? selectedLocation,
      DifficultyLevel difficulty,
      Set<String> selectedObstacleIds,
      Set<String> selectedEnvironmentTags,
      bool isObstacleSectionExpanded,
      String? captionImagePath,
      String? captionImgUrl,
      bool isUploadingCaption,
      NewSpotPhotoSource? photoSource,
      bool isSubmitting,
      String? errorMessage});

  $MapLocationCopyWith<$Res>? get selectedLocation;
}

/// @nodoc
class _$NewSpotUiModelCopyWithImpl<$Res>
    implements $NewSpotUiModelCopyWith<$Res> {
  _$NewSpotUiModelCopyWithImpl(this._self, this._then);

  final NewSpotUiModel _self;
  final $Res Function(NewSpotUiModel) _then;

  /// Create a copy of NewSpotUiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotName = null,
    Object? selectedLocation = freezed,
    Object? difficulty = null,
    Object? selectedObstacleIds = null,
    Object? selectedEnvironmentTags = null,
    Object? isObstacleSectionExpanded = null,
    Object? captionImagePath = freezed,
    Object? captionImgUrl = freezed,
    Object? isUploadingCaption = null,
    Object? photoSource = freezed,
    Object? isSubmitting = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      spotName: null == spotName
          ? _self.spotName
          : spotName // ignore: cast_nullable_to_non_nullable
              as String,
      selectedLocation: freezed == selectedLocation
          ? _self.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as MapLocation?,
      difficulty: null == difficulty
          ? _self.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as DifficultyLevel,
      selectedObstacleIds: null == selectedObstacleIds
          ? _self.selectedObstacleIds
          : selectedObstacleIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      selectedEnvironmentTags: null == selectedEnvironmentTags
          ? _self.selectedEnvironmentTags
          : selectedEnvironmentTags // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      isObstacleSectionExpanded: null == isObstacleSectionExpanded
          ? _self.isObstacleSectionExpanded
          : isObstacleSectionExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      captionImagePath: freezed == captionImagePath
          ? _self.captionImagePath
          : captionImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      captionImgUrl: freezed == captionImgUrl
          ? _self.captionImgUrl
          : captionImgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isUploadingCaption: null == isUploadingCaption
          ? _self.isUploadingCaption
          : isUploadingCaption // ignore: cast_nullable_to_non_nullable
              as bool,
      photoSource: freezed == photoSource
          ? _self.photoSource
          : photoSource // ignore: cast_nullable_to_non_nullable
              as NewSpotPhotoSource?,
      isSubmitting: null == isSubmitting
          ? _self.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of NewSpotUiModel
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

/// Adds pattern-matching-related methods to [NewSpotUiModel].
extension NewSpotUiModelPatterns on NewSpotUiModel {
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
    TResult Function(_NewSpotUiModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NewSpotUiModel() when $default != null:
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
    TResult Function(_NewSpotUiModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NewSpotUiModel():
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
    TResult? Function(_NewSpotUiModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NewSpotUiModel() when $default != null:
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
            String spotName,
            MapLocation? selectedLocation,
            DifficultyLevel difficulty,
            Set<String> selectedObstacleIds,
            Set<String> selectedEnvironmentTags,
            bool isObstacleSectionExpanded,
            String? captionImagePath,
            String? captionImgUrl,
            bool isUploadingCaption,
            NewSpotPhotoSource? photoSource,
            bool isSubmitting,
            String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NewSpotUiModel() when $default != null:
        return $default(
            _that.spotName,
            _that.selectedLocation,
            _that.difficulty,
            _that.selectedObstacleIds,
            _that.selectedEnvironmentTags,
            _that.isObstacleSectionExpanded,
            _that.captionImagePath,
            _that.captionImgUrl,
            _that.isUploadingCaption,
            _that.photoSource,
            _that.isSubmitting,
            _that.errorMessage);
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
            String spotName,
            MapLocation? selectedLocation,
            DifficultyLevel difficulty,
            Set<String> selectedObstacleIds,
            Set<String> selectedEnvironmentTags,
            bool isObstacleSectionExpanded,
            String? captionImagePath,
            String? captionImgUrl,
            bool isUploadingCaption,
            NewSpotPhotoSource? photoSource,
            bool isSubmitting,
            String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NewSpotUiModel():
        return $default(
            _that.spotName,
            _that.selectedLocation,
            _that.difficulty,
            _that.selectedObstacleIds,
            _that.selectedEnvironmentTags,
            _that.isObstacleSectionExpanded,
            _that.captionImagePath,
            _that.captionImgUrl,
            _that.isUploadingCaption,
            _that.photoSource,
            _that.isSubmitting,
            _that.errorMessage);
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
            String spotName,
            MapLocation? selectedLocation,
            DifficultyLevel difficulty,
            Set<String> selectedObstacleIds,
            Set<String> selectedEnvironmentTags,
            bool isObstacleSectionExpanded,
            String? captionImagePath,
            String? captionImgUrl,
            bool isUploadingCaption,
            NewSpotPhotoSource? photoSource,
            bool isSubmitting,
            String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NewSpotUiModel() when $default != null:
        return $default(
            _that.spotName,
            _that.selectedLocation,
            _that.difficulty,
            _that.selectedObstacleIds,
            _that.selectedEnvironmentTags,
            _that.isObstacleSectionExpanded,
            _that.captionImagePath,
            _that.captionImgUrl,
            _that.isUploadingCaption,
            _that.photoSource,
            _that.isSubmitting,
            _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _NewSpotUiModel implements NewSpotUiModel {
  const _NewSpotUiModel(
      {this.spotName = '',
      this.selectedLocation,
      this.difficulty = DifficultyLevel.low,
      final Set<String> selectedObstacleIds = const <String>{},
      final Set<String> selectedEnvironmentTags = const <String>{},
      this.isObstacleSectionExpanded = true,
      this.captionImagePath,
      this.captionImgUrl,
      this.isUploadingCaption = false,
      this.photoSource,
      this.isSubmitting = false,
      this.errorMessage})
      : _selectedObstacleIds = selectedObstacleIds,
        _selectedEnvironmentTags = selectedEnvironmentTags;

  @override
  @JsonKey()
  final String spotName;
  @override
  final MapLocation? selectedLocation;
  @override
  @JsonKey()
  final DifficultyLevel difficulty;
  final Set<String> _selectedObstacleIds;
  @override
  @JsonKey()
  Set<String> get selectedObstacleIds {
    if (_selectedObstacleIds is EqualUnmodifiableSetView)
      return _selectedObstacleIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedObstacleIds);
  }

  final Set<String> _selectedEnvironmentTags;
  @override
  @JsonKey()
  Set<String> get selectedEnvironmentTags {
    if (_selectedEnvironmentTags is EqualUnmodifiableSetView)
      return _selectedEnvironmentTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedEnvironmentTags);
  }

  @override
  @JsonKey()
  final bool isObstacleSectionExpanded;
  @override
  final String? captionImagePath;
  @override
  final String? captionImgUrl;
  @override
  @JsonKey()
  final bool isUploadingCaption;
  @override
  final NewSpotPhotoSource? photoSource;
  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  final String? errorMessage;

  /// Create a copy of NewSpotUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NewSpotUiModelCopyWith<_NewSpotUiModel> get copyWith =>
      __$NewSpotUiModelCopyWithImpl<_NewSpotUiModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewSpotUiModel &&
            (identical(other.spotName, spotName) ||
                other.spotName == spotName) &&
            (identical(other.selectedLocation, selectedLocation) ||
                other.selectedLocation == selectedLocation) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            const DeepCollectionEquality()
                .equals(other._selectedObstacleIds, _selectedObstacleIds) &&
            const DeepCollectionEquality().equals(
                other._selectedEnvironmentTags, _selectedEnvironmentTags) &&
            (identical(other.isObstacleSectionExpanded,
                    isObstacleSectionExpanded) ||
                other.isObstacleSectionExpanded == isObstacleSectionExpanded) &&
            (identical(other.captionImagePath, captionImagePath) ||
                other.captionImagePath == captionImagePath) &&
            (identical(other.captionImgUrl, captionImgUrl) ||
                other.captionImgUrl == captionImgUrl) &&
            (identical(other.isUploadingCaption, isUploadingCaption) ||
                other.isUploadingCaption == isUploadingCaption) &&
            (identical(other.photoSource, photoSource) ||
                other.photoSource == photoSource) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      spotName,
      selectedLocation,
      difficulty,
      const DeepCollectionEquality().hash(_selectedObstacleIds),
      const DeepCollectionEquality().hash(_selectedEnvironmentTags),
      isObstacleSectionExpanded,
      captionImagePath,
      captionImgUrl,
      isUploadingCaption,
      photoSource,
      isSubmitting,
      errorMessage);

  @override
  String toString() {
    return 'NewSpotUiModel(spotName: $spotName, selectedLocation: $selectedLocation, difficulty: $difficulty, selectedObstacleIds: $selectedObstacleIds, selectedEnvironmentTags: $selectedEnvironmentTags, isObstacleSectionExpanded: $isObstacleSectionExpanded, captionImagePath: $captionImagePath, captionImgUrl: $captionImgUrl, isUploadingCaption: $isUploadingCaption, photoSource: $photoSource, isSubmitting: $isSubmitting, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$NewSpotUiModelCopyWith<$Res>
    implements $NewSpotUiModelCopyWith<$Res> {
  factory _$NewSpotUiModelCopyWith(
          _NewSpotUiModel value, $Res Function(_NewSpotUiModel) _then) =
      __$NewSpotUiModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String spotName,
      MapLocation? selectedLocation,
      DifficultyLevel difficulty,
      Set<String> selectedObstacleIds,
      Set<String> selectedEnvironmentTags,
      bool isObstacleSectionExpanded,
      String? captionImagePath,
      String? captionImgUrl,
      bool isUploadingCaption,
      NewSpotPhotoSource? photoSource,
      bool isSubmitting,
      String? errorMessage});

  @override
  $MapLocationCopyWith<$Res>? get selectedLocation;
}

/// @nodoc
class __$NewSpotUiModelCopyWithImpl<$Res>
    implements _$NewSpotUiModelCopyWith<$Res> {
  __$NewSpotUiModelCopyWithImpl(this._self, this._then);

  final _NewSpotUiModel _self;
  final $Res Function(_NewSpotUiModel) _then;

  /// Create a copy of NewSpotUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? spotName = null,
    Object? selectedLocation = freezed,
    Object? difficulty = null,
    Object? selectedObstacleIds = null,
    Object? selectedEnvironmentTags = null,
    Object? isObstacleSectionExpanded = null,
    Object? captionImagePath = freezed,
    Object? captionImgUrl = freezed,
    Object? isUploadingCaption = null,
    Object? photoSource = freezed,
    Object? isSubmitting = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_NewSpotUiModel(
      spotName: null == spotName
          ? _self.spotName
          : spotName // ignore: cast_nullable_to_non_nullable
              as String,
      selectedLocation: freezed == selectedLocation
          ? _self.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as MapLocation?,
      difficulty: null == difficulty
          ? _self.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as DifficultyLevel,
      selectedObstacleIds: null == selectedObstacleIds
          ? _self._selectedObstacleIds
          : selectedObstacleIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      selectedEnvironmentTags: null == selectedEnvironmentTags
          ? _self._selectedEnvironmentTags
          : selectedEnvironmentTags // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      isObstacleSectionExpanded: null == isObstacleSectionExpanded
          ? _self.isObstacleSectionExpanded
          : isObstacleSectionExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      captionImagePath: freezed == captionImagePath
          ? _self.captionImagePath
          : captionImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      captionImgUrl: freezed == captionImgUrl
          ? _self.captionImgUrl
          : captionImgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isUploadingCaption: null == isUploadingCaption
          ? _self.isUploadingCaption
          : isUploadingCaption // ignore: cast_nullable_to_non_nullable
              as bool,
      photoSource: freezed == photoSource
          ? _self.photoSource
          : photoSource // ignore: cast_nullable_to_non_nullable
              as NewSpotPhotoSource?,
      isSubmitting: null == isSubmitting
          ? _self.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of NewSpotUiModel
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
