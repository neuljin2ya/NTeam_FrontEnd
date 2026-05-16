// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_upload_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FileUploadResultModel {
  String get fileUrl;

  /// Create a copy of FileUploadResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FileUploadResultModelCopyWith<FileUploadResultModel> get copyWith =>
      _$FileUploadResultModelCopyWithImpl<FileUploadResultModel>(
          this as FileUploadResultModel, _$identity);

  /// Serializes this FileUploadResultModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileUploadResultModel &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fileUrl);

  @override
  String toString() {
    return 'FileUploadResultModel(fileUrl: $fileUrl)';
  }
}

/// @nodoc
abstract mixin class $FileUploadResultModelCopyWith<$Res> {
  factory $FileUploadResultModelCopyWith(FileUploadResultModel value,
          $Res Function(FileUploadResultModel) _then) =
      _$FileUploadResultModelCopyWithImpl;
  @useResult
  $Res call({String fileUrl});
}

/// @nodoc
class _$FileUploadResultModelCopyWithImpl<$Res>
    implements $FileUploadResultModelCopyWith<$Res> {
  _$FileUploadResultModelCopyWithImpl(this._self, this._then);

  final FileUploadResultModel _self;
  final $Res Function(FileUploadResultModel) _then;

  /// Create a copy of FileUploadResultModel
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

/// Adds pattern-matching-related methods to [FileUploadResultModel].
extension FileUploadResultModelPatterns on FileUploadResultModel {
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
    TResult Function(_FileUploadResultModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FileUploadResultModel() when $default != null:
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
    TResult Function(_FileUploadResultModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FileUploadResultModel():
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
    TResult? Function(_FileUploadResultModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FileUploadResultModel() when $default != null:
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
      case _FileUploadResultModel() when $default != null:
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
      case _FileUploadResultModel():
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
      case _FileUploadResultModel() when $default != null:
        return $default(_that.fileUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FileUploadResultModel implements FileUploadResultModel {
  const _FileUploadResultModel({required this.fileUrl});
  factory _FileUploadResultModel.fromJson(Map<String, dynamic> json) =>
      _$FileUploadResultModelFromJson(json);

  @override
  final String fileUrl;

  /// Create a copy of FileUploadResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FileUploadResultModelCopyWith<_FileUploadResultModel> get copyWith =>
      __$FileUploadResultModelCopyWithImpl<_FileUploadResultModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FileUploadResultModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FileUploadResultModel &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fileUrl);

  @override
  String toString() {
    return 'FileUploadResultModel(fileUrl: $fileUrl)';
  }
}

/// @nodoc
abstract mixin class _$FileUploadResultModelCopyWith<$Res>
    implements $FileUploadResultModelCopyWith<$Res> {
  factory _$FileUploadResultModelCopyWith(_FileUploadResultModel value,
          $Res Function(_FileUploadResultModel) _then) =
      __$FileUploadResultModelCopyWithImpl;
  @override
  @useResult
  $Res call({String fileUrl});
}

/// @nodoc
class __$FileUploadResultModelCopyWithImpl<$Res>
    implements _$FileUploadResultModelCopyWith<$Res> {
  __$FileUploadResultModelCopyWithImpl(this._self, this._then);

  final _FileUploadResultModel _self;
  final $Res Function(_FileUploadResultModel) _then;

  /// Create a copy of FileUploadResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fileUrl = null,
  }) {
    return _then(_FileUploadResultModel(
      fileUrl: null == fileUrl
          ? _self.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
