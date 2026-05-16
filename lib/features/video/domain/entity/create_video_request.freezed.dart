// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_video_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateVideoRequest {
  int get spotId;
  String get title;
  String get videoUrl;

  /// Create a copy of CreateVideoRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateVideoRequestCopyWith<CreateVideoRequest> get copyWith =>
      _$CreateVideoRequestCopyWithImpl<CreateVideoRequest>(
          this as CreateVideoRequest, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateVideoRequest &&
            (identical(other.spotId, spotId) || other.spotId == spotId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, spotId, title, videoUrl);

  @override
  String toString() {
    return 'CreateVideoRequest(spotId: $spotId, title: $title, videoUrl: $videoUrl)';
  }
}

/// @nodoc
abstract mixin class $CreateVideoRequestCopyWith<$Res> {
  factory $CreateVideoRequestCopyWith(
          CreateVideoRequest value, $Res Function(CreateVideoRequest) _then) =
      _$CreateVideoRequestCopyWithImpl;
  @useResult
  $Res call({int spotId, String title, String videoUrl});
}

/// @nodoc
class _$CreateVideoRequestCopyWithImpl<$Res>
    implements $CreateVideoRequestCopyWith<$Res> {
  _$CreateVideoRequestCopyWithImpl(this._self, this._then);

  final CreateVideoRequest _self;
  final $Res Function(CreateVideoRequest) _then;

  /// Create a copy of CreateVideoRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotId = null,
    Object? title = null,
    Object? videoUrl = null,
  }) {
    return _then(_self.copyWith(
      spotId: null == spotId
          ? _self.spotId
          : spotId // ignore: cast_nullable_to_non_nullable
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

/// Adds pattern-matching-related methods to [CreateVideoRequest].
extension CreateVideoRequestPatterns on CreateVideoRequest {
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
    TResult Function(_CreateVideoRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateVideoRequest() when $default != null:
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
    TResult Function(_CreateVideoRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateVideoRequest():
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
    TResult? Function(_CreateVideoRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateVideoRequest() when $default != null:
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
    TResult Function(int spotId, String title, String videoUrl)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateVideoRequest() when $default != null:
        return $default(_that.spotId, _that.title, _that.videoUrl);
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
    TResult Function(int spotId, String title, String videoUrl) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateVideoRequest():
        return $default(_that.spotId, _that.title, _that.videoUrl);
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
    TResult? Function(int spotId, String title, String videoUrl)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateVideoRequest() when $default != null:
        return $default(_that.spotId, _that.title, _that.videoUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CreateVideoRequest implements CreateVideoRequest {
  const _CreateVideoRequest(
      {required this.spotId, required this.title, required this.videoUrl});

  @override
  final int spotId;
  @override
  final String title;
  @override
  final String videoUrl;

  /// Create a copy of CreateVideoRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateVideoRequestCopyWith<_CreateVideoRequest> get copyWith =>
      __$CreateVideoRequestCopyWithImpl<_CreateVideoRequest>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateVideoRequest &&
            (identical(other.spotId, spotId) || other.spotId == spotId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, spotId, title, videoUrl);

  @override
  String toString() {
    return 'CreateVideoRequest(spotId: $spotId, title: $title, videoUrl: $videoUrl)';
  }
}

/// @nodoc
abstract mixin class _$CreateVideoRequestCopyWith<$Res>
    implements $CreateVideoRequestCopyWith<$Res> {
  factory _$CreateVideoRequestCopyWith(
          _CreateVideoRequest value, $Res Function(_CreateVideoRequest) _then) =
      __$CreateVideoRequestCopyWithImpl;
  @override
  @useResult
  $Res call({int spotId, String title, String videoUrl});
}

/// @nodoc
class __$CreateVideoRequestCopyWithImpl<$Res>
    implements _$CreateVideoRequestCopyWith<$Res> {
  __$CreateVideoRequestCopyWithImpl(this._self, this._then);

  final _CreateVideoRequest _self;
  final $Res Function(_CreateVideoRequest) _then;

  /// Create a copy of CreateVideoRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? spotId = null,
    Object? title = null,
    Object? videoUrl = null,
  }) {
    return _then(_CreateVideoRequest(
      spotId: null == spotId
          ? _self.spotId
          : spotId // ignore: cast_nullable_to_non_nullable
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
