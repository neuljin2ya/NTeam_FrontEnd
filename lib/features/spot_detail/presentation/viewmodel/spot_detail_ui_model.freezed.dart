// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spot_detail_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpotDetailUiModel {
  bool get isLoading;
  Spot? get spot;

  /// `api/file/download`로 받은 캡션 이미지 바이너리.
  Uint8List? get captionImageBytes;
  bool get isVideosLoading;
  List<SpotDetailVideoUiModel> get videos;
  bool get isSavingSpot;
  String? get errorMessage;

  /// Create a copy of SpotDetailUiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpotDetailUiModelCopyWith<SpotDetailUiModel> get copyWith =>
      _$SpotDetailUiModelCopyWithImpl<SpotDetailUiModel>(
          this as SpotDetailUiModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpotDetailUiModel &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.spot, spot) || other.spot == spot) &&
            const DeepCollectionEquality()
                .equals(other.captionImageBytes, captionImageBytes) &&
            (identical(other.isVideosLoading, isVideosLoading) ||
                other.isVideosLoading == isVideosLoading) &&
            const DeepCollectionEquality().equals(other.videos, videos) &&
            (identical(other.isSavingSpot, isSavingSpot) ||
                other.isSavingSpot == isSavingSpot) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      spot,
      const DeepCollectionEquality().hash(captionImageBytes),
      isVideosLoading,
      const DeepCollectionEquality().hash(videos),
      isSavingSpot,
      errorMessage);

  @override
  String toString() {
    return 'SpotDetailUiModel(isLoading: $isLoading, spot: $spot, captionImageBytes: $captionImageBytes, isVideosLoading: $isVideosLoading, videos: $videos, isSavingSpot: $isSavingSpot, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $SpotDetailUiModelCopyWith<$Res> {
  factory $SpotDetailUiModelCopyWith(
          SpotDetailUiModel value, $Res Function(SpotDetailUiModel) _then) =
      _$SpotDetailUiModelCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      Spot? spot,
      Uint8List? captionImageBytes,
      bool isVideosLoading,
      List<SpotDetailVideoUiModel> videos,
      bool isSavingSpot,
      String? errorMessage});

  $SpotCopyWith<$Res>? get spot;
}

/// @nodoc
class _$SpotDetailUiModelCopyWithImpl<$Res>
    implements $SpotDetailUiModelCopyWith<$Res> {
  _$SpotDetailUiModelCopyWithImpl(this._self, this._then);

  final SpotDetailUiModel _self;
  final $Res Function(SpotDetailUiModel) _then;

  /// Create a copy of SpotDetailUiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? spot = freezed,
    Object? captionImageBytes = freezed,
    Object? isVideosLoading = null,
    Object? videos = null,
    Object? isSavingSpot = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      spot: freezed == spot
          ? _self.spot
          : spot // ignore: cast_nullable_to_non_nullable
              as Spot?,
      captionImageBytes: freezed == captionImageBytes
          ? _self.captionImageBytes
          : captionImageBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      isVideosLoading: null == isVideosLoading
          ? _self.isVideosLoading
          : isVideosLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      videos: null == videos
          ? _self.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<SpotDetailVideoUiModel>,
      isSavingSpot: null == isSavingSpot
          ? _self.isSavingSpot
          : isSavingSpot // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of SpotDetailUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpotCopyWith<$Res>? get spot {
    if (_self.spot == null) {
      return null;
    }

    return $SpotCopyWith<$Res>(_self.spot!, (value) {
      return _then(_self.copyWith(spot: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SpotDetailUiModel].
extension SpotDetailUiModelPatterns on SpotDetailUiModel {
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
    TResult Function(_SpotDetailUiModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SpotDetailUiModel() when $default != null:
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
    TResult Function(_SpotDetailUiModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpotDetailUiModel():
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
    TResult? Function(_SpotDetailUiModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpotDetailUiModel() when $default != null:
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
            bool isLoading,
            Spot? spot,
            Uint8List? captionImageBytes,
            bool isVideosLoading,
            List<SpotDetailVideoUiModel> videos,
            bool isSavingSpot,
            String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SpotDetailUiModel() when $default != null:
        return $default(
            _that.isLoading,
            _that.spot,
            _that.captionImageBytes,
            _that.isVideosLoading,
            _that.videos,
            _that.isSavingSpot,
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
            bool isLoading,
            Spot? spot,
            Uint8List? captionImageBytes,
            bool isVideosLoading,
            List<SpotDetailVideoUiModel> videos,
            bool isSavingSpot,
            String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpotDetailUiModel():
        return $default(
            _that.isLoading,
            _that.spot,
            _that.captionImageBytes,
            _that.isVideosLoading,
            _that.videos,
            _that.isSavingSpot,
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
            bool isLoading,
            Spot? spot,
            Uint8List? captionImageBytes,
            bool isVideosLoading,
            List<SpotDetailVideoUiModel> videos,
            bool isSavingSpot,
            String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpotDetailUiModel() when $default != null:
        return $default(
            _that.isLoading,
            _that.spot,
            _that.captionImageBytes,
            _that.isVideosLoading,
            _that.videos,
            _that.isSavingSpot,
            _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SpotDetailUiModel implements SpotDetailUiModel {
  const _SpotDetailUiModel(
      {this.isLoading = false,
      this.spot,
      this.captionImageBytes,
      this.isVideosLoading = false,
      final List<SpotDetailVideoUiModel> videos =
          const <SpotDetailVideoUiModel>[],
      this.isSavingSpot = false,
      this.errorMessage})
      : _videos = videos;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Spot? spot;

  /// `api/file/download`로 받은 캡션 이미지 바이너리.
  @override
  final Uint8List? captionImageBytes;
  @override
  @JsonKey()
  final bool isVideosLoading;
  final List<SpotDetailVideoUiModel> _videos;
  @override
  @JsonKey()
  List<SpotDetailVideoUiModel> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  @override
  @JsonKey()
  final bool isSavingSpot;
  @override
  final String? errorMessage;

  /// Create a copy of SpotDetailUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SpotDetailUiModelCopyWith<_SpotDetailUiModel> get copyWith =>
      __$SpotDetailUiModelCopyWithImpl<_SpotDetailUiModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpotDetailUiModel &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.spot, spot) || other.spot == spot) &&
            const DeepCollectionEquality()
                .equals(other.captionImageBytes, captionImageBytes) &&
            (identical(other.isVideosLoading, isVideosLoading) ||
                other.isVideosLoading == isVideosLoading) &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            (identical(other.isSavingSpot, isSavingSpot) ||
                other.isSavingSpot == isSavingSpot) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      spot,
      const DeepCollectionEquality().hash(captionImageBytes),
      isVideosLoading,
      const DeepCollectionEquality().hash(_videos),
      isSavingSpot,
      errorMessage);

  @override
  String toString() {
    return 'SpotDetailUiModel(isLoading: $isLoading, spot: $spot, captionImageBytes: $captionImageBytes, isVideosLoading: $isVideosLoading, videos: $videos, isSavingSpot: $isSavingSpot, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$SpotDetailUiModelCopyWith<$Res>
    implements $SpotDetailUiModelCopyWith<$Res> {
  factory _$SpotDetailUiModelCopyWith(
          _SpotDetailUiModel value, $Res Function(_SpotDetailUiModel) _then) =
      __$SpotDetailUiModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Spot? spot,
      Uint8List? captionImageBytes,
      bool isVideosLoading,
      List<SpotDetailVideoUiModel> videos,
      bool isSavingSpot,
      String? errorMessage});

  @override
  $SpotCopyWith<$Res>? get spot;
}

/// @nodoc
class __$SpotDetailUiModelCopyWithImpl<$Res>
    implements _$SpotDetailUiModelCopyWith<$Res> {
  __$SpotDetailUiModelCopyWithImpl(this._self, this._then);

  final _SpotDetailUiModel _self;
  final $Res Function(_SpotDetailUiModel) _then;

  /// Create a copy of SpotDetailUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? spot = freezed,
    Object? captionImageBytes = freezed,
    Object? isVideosLoading = null,
    Object? videos = null,
    Object? isSavingSpot = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_SpotDetailUiModel(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      spot: freezed == spot
          ? _self.spot
          : spot // ignore: cast_nullable_to_non_nullable
              as Spot?,
      captionImageBytes: freezed == captionImageBytes
          ? _self.captionImageBytes
          : captionImageBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      isVideosLoading: null == isVideosLoading
          ? _self.isVideosLoading
          : isVideosLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      videos: null == videos
          ? _self._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<SpotDetailVideoUiModel>,
      isSavingSpot: null == isSavingSpot
          ? _self.isSavingSpot
          : isSavingSpot // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of SpotDetailUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpotCopyWith<$Res>? get spot {
    if (_self.spot == null) {
      return null;
    }

    return $SpotCopyWith<$Res>(_self.spot!, (value) {
      return _then(_self.copyWith(spot: value));
    });
  }
}

// dart format on
