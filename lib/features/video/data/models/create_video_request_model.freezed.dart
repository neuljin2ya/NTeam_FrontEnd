// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_video_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateVideoRequestModel {
  int get spotId;
  String get title;
  String get videoUrl;

  /// Create a copy of CreateVideoRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateVideoRequestModelCopyWith<CreateVideoRequestModel> get copyWith =>
      _$CreateVideoRequestModelCopyWithImpl<CreateVideoRequestModel>(
          this as CreateVideoRequestModel, _$identity);

  /// Serializes this CreateVideoRequestModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateVideoRequestModel &&
            (identical(other.spotId, spotId) || other.spotId == spotId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, spotId, title, videoUrl);

  @override
  String toString() {
    return 'CreateVideoRequestModel(spotId: $spotId, title: $title, videoUrl: $videoUrl)';
  }
}

/// @nodoc
abstract mixin class $CreateVideoRequestModelCopyWith<$Res> {
  factory $CreateVideoRequestModelCopyWith(CreateVideoRequestModel value,
          $Res Function(CreateVideoRequestModel) _then) =
      _$CreateVideoRequestModelCopyWithImpl;
  @useResult
  $Res call({int spotId, String title, String videoUrl});
}

/// @nodoc
class _$CreateVideoRequestModelCopyWithImpl<$Res>
    implements $CreateVideoRequestModelCopyWith<$Res> {
  _$CreateVideoRequestModelCopyWithImpl(this._self, this._then);

  final CreateVideoRequestModel _self;
  final $Res Function(CreateVideoRequestModel) _then;

  /// Create a copy of CreateVideoRequestModel
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

/// Adds pattern-matching-related methods to [CreateVideoRequestModel].
extension CreateVideoRequestModelPatterns on CreateVideoRequestModel {
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
    TResult Function(_CreateVideoRequestModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateVideoRequestModel() when $default != null:
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
    TResult Function(_CreateVideoRequestModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateVideoRequestModel():
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
    TResult? Function(_CreateVideoRequestModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateVideoRequestModel() when $default != null:
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
      case _CreateVideoRequestModel() when $default != null:
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
      case _CreateVideoRequestModel():
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
      case _CreateVideoRequestModel() when $default != null:
        return $default(_that.spotId, _that.title, _that.videoUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateVideoRequestModel implements CreateVideoRequestModel {
  const _CreateVideoRequestModel(
      {required this.spotId, required this.title, required this.videoUrl});
  factory _CreateVideoRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateVideoRequestModelFromJson(json);

  @override
  final int spotId;
  @override
  final String title;
  @override
  final String videoUrl;

  /// Create a copy of CreateVideoRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateVideoRequestModelCopyWith<_CreateVideoRequestModel> get copyWith =>
      __$CreateVideoRequestModelCopyWithImpl<_CreateVideoRequestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateVideoRequestModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateVideoRequestModel &&
            (identical(other.spotId, spotId) || other.spotId == spotId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, spotId, title, videoUrl);

  @override
  String toString() {
    return 'CreateVideoRequestModel(spotId: $spotId, title: $title, videoUrl: $videoUrl)';
  }
}

/// @nodoc
abstract mixin class _$CreateVideoRequestModelCopyWith<$Res>
    implements $CreateVideoRequestModelCopyWith<$Res> {
  factory _$CreateVideoRequestModelCopyWith(_CreateVideoRequestModel value,
          $Res Function(_CreateVideoRequestModel) _then) =
      __$CreateVideoRequestModelCopyWithImpl;
  @override
  @useResult
  $Res call({int spotId, String title, String videoUrl});
}

/// @nodoc
class __$CreateVideoRequestModelCopyWithImpl<$Res>
    implements _$CreateVideoRequestModelCopyWith<$Res> {
  __$CreateVideoRequestModelCopyWithImpl(this._self, this._then);

  final _CreateVideoRequestModel _self;
  final $Res Function(_CreateVideoRequestModel) _then;

  /// Create a copy of CreateVideoRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? spotId = null,
    Object? title = null,
    Object? videoUrl = null,
  }) {
    return _then(_CreateVideoRequestModel(
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
