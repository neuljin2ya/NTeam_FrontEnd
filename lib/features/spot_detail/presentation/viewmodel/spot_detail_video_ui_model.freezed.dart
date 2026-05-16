// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spot_detail_video_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpotDetailVideoUiModel {
  int get videoId;
  String get title;

  /// `api/file/download`로 변환된 영상 재생 URL.
  String get videoUrl;

  /// Create a copy of SpotDetailVideoUiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpotDetailVideoUiModelCopyWith<SpotDetailVideoUiModel> get copyWith =>
      _$SpotDetailVideoUiModelCopyWithImpl<SpotDetailVideoUiModel>(
          this as SpotDetailVideoUiModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpotDetailVideoUiModel &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoId, title, videoUrl);

  @override
  String toString() {
    return 'SpotDetailVideoUiModel(videoId: $videoId, title: $title, videoUrl: $videoUrl)';
  }
}

/// @nodoc
abstract mixin class $SpotDetailVideoUiModelCopyWith<$Res> {
  factory $SpotDetailVideoUiModelCopyWith(SpotDetailVideoUiModel value,
          $Res Function(SpotDetailVideoUiModel) _then) =
      _$SpotDetailVideoUiModelCopyWithImpl;
  @useResult
  $Res call({int videoId, String title, String videoUrl});
}

/// @nodoc
class _$SpotDetailVideoUiModelCopyWithImpl<$Res>
    implements $SpotDetailVideoUiModelCopyWith<$Res> {
  _$SpotDetailVideoUiModelCopyWithImpl(this._self, this._then);

  final SpotDetailVideoUiModel _self;
  final $Res Function(SpotDetailVideoUiModel) _then;

  /// Create a copy of SpotDetailVideoUiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
    Object? title = null,
    Object? videoUrl = null,
  }) {
    return _then(_self.copyWith(
      videoId: null == videoId
          ? _self.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: null == videoUrl
          ? _self.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SpotDetailVideoUiModel].
extension SpotDetailVideoUiModelPatterns on SpotDetailVideoUiModel {
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
    TResult Function(_SpotDetailVideoUiModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SpotDetailVideoUiModel() when $default != null:
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
    TResult Function(_SpotDetailVideoUiModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpotDetailVideoUiModel():
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
    TResult? Function(_SpotDetailVideoUiModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpotDetailVideoUiModel() when $default != null:
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
    TResult Function(int videoId, String title, String videoUrl)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SpotDetailVideoUiModel() when $default != null:
        return $default(_that.videoId, _that.title, _that.videoUrl);
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
    TResult Function(int videoId, String title, String videoUrl) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpotDetailVideoUiModel():
        return $default(_that.videoId, _that.title, _that.videoUrl);
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
    TResult? Function(int videoId, String title, String videoUrl)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpotDetailVideoUiModel() when $default != null:
        return $default(_that.videoId, _that.title, _that.videoUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SpotDetailVideoUiModel implements SpotDetailVideoUiModel {
  const _SpotDetailVideoUiModel(
      {required this.videoId, required this.title, required this.videoUrl});

  @override
  final int videoId;
  @override
  final String title;

  /// `api/file/download`로 변환된 영상 재생 URL.
  @override
  final String videoUrl;

  /// Create a copy of SpotDetailVideoUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SpotDetailVideoUiModelCopyWith<_SpotDetailVideoUiModel> get copyWith =>
      __$SpotDetailVideoUiModelCopyWithImpl<_SpotDetailVideoUiModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpotDetailVideoUiModel &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoId, title, videoUrl);

  @override
  String toString() {
    return 'SpotDetailVideoUiModel(videoId: $videoId, title: $title, videoUrl: $videoUrl)';
  }
}

/// @nodoc
abstract mixin class _$SpotDetailVideoUiModelCopyWith<$Res>
    implements $SpotDetailVideoUiModelCopyWith<$Res> {
  factory _$SpotDetailVideoUiModelCopyWith(_SpotDetailVideoUiModel value,
          $Res Function(_SpotDetailVideoUiModel) _then) =
      __$SpotDetailVideoUiModelCopyWithImpl;
  @override
  @useResult
  $Res call({int videoId, String title, String videoUrl});
}

/// @nodoc
class __$SpotDetailVideoUiModelCopyWithImpl<$Res>
    implements _$SpotDetailVideoUiModelCopyWith<$Res> {
  __$SpotDetailVideoUiModelCopyWithImpl(this._self, this._then);

  final _SpotDetailVideoUiModel _self;
  final $Res Function(_SpotDetailVideoUiModel) _then;

  /// Create a copy of SpotDetailVideoUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? videoId = null,
    Object? title = null,
    Object? videoUrl = null,
  }) {
    return _then(_SpotDetailVideoUiModel(
      videoId: null == videoId
          ? _self.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: null == videoUrl
          ? _self.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
