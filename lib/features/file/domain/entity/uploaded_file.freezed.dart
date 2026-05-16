// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uploaded_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UploadedFile {
  String get fileUrl;

  /// Create a copy of UploadedFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UploadedFileCopyWith<UploadedFile> get copyWith =>
      _$UploadedFileCopyWithImpl<UploadedFile>(
          this as UploadedFile, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UploadedFile &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileUrl);

  @override
  String toString() {
    return 'UploadedFile(fileUrl: $fileUrl)';
  }
}

/// @nodoc
abstract mixin class $UploadedFileCopyWith<$Res> {
  factory $UploadedFileCopyWith(
          UploadedFile value, $Res Function(UploadedFile) _then) =
      _$UploadedFileCopyWithImpl;
  @useResult
  $Res call({String fileUrl});
}

/// @nodoc
class _$UploadedFileCopyWithImpl<$Res> implements $UploadedFileCopyWith<$Res> {
  _$UploadedFileCopyWithImpl(this._self, this._then);

  final UploadedFile _self;
  final $Res Function(UploadedFile) _then;

  /// Create a copy of UploadedFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileUrl = null,
  }) {
    return _then(_self.copyWith(
      fileUrl: null == fileUrl
          ? _self.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [UploadedFile].
extension UploadedFilePatterns on UploadedFile {
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
    TResult Function(_UploadedFile value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UploadedFile() when $default != null:
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
    TResult Function(_UploadedFile value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UploadedFile():
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
    TResult? Function(_UploadedFile value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UploadedFile() when $default != null:
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
    TResult Function(String fileUrl)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UploadedFile() when $default != null:
        return $default(_that.fileUrl);
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
    TResult Function(String fileUrl) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UploadedFile():
        return $default(_that.fileUrl);
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
    TResult? Function(String fileUrl)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UploadedFile() when $default != null:
        return $default(_that.fileUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _UploadedFile implements UploadedFile {
  const _UploadedFile({required this.fileUrl});

  @override
  final String fileUrl;

  /// Create a copy of UploadedFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UploadedFileCopyWith<_UploadedFile> get copyWith =>
      __$UploadedFileCopyWithImpl<_UploadedFile>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UploadedFile &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileUrl);

  @override
  String toString() {
    return 'UploadedFile(fileUrl: $fileUrl)';
  }
}

/// @nodoc
abstract mixin class _$UploadedFileCopyWith<$Res>
    implements $UploadedFileCopyWith<$Res> {
  factory _$UploadedFileCopyWith(
          _UploadedFile value, $Res Function(_UploadedFile) _then) =
      __$UploadedFileCopyWithImpl;
  @override
  @useResult
  $Res call({String fileUrl});
}

/// @nodoc
class __$UploadedFileCopyWithImpl<$Res>
    implements _$UploadedFileCopyWith<$Res> {
  __$UploadedFileCopyWithImpl(this._self, this._then);

  final _UploadedFile _self;
  final $Res Function(_UploadedFile) _then;

  /// Create a copy of UploadedFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fileUrl = null,
  }) {
    return _then(_UploadedFile(
      fileUrl: null == fileUrl
          ? _self.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
