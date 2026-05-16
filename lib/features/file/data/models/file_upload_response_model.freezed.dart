// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_upload_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FileUploadResponseModel {
  bool get isSuccess;
  String get code;
  String get message;
  FileUploadResultModel? get result;

  /// Create a copy of FileUploadResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FileUploadResponseModelCopyWith<FileUploadResponseModel> get copyWith =>
      _$FileUploadResponseModelCopyWithImpl<FileUploadResponseModel>(
          this as FileUploadResponseModel, _$identity);

  /// Serializes this FileUploadResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileUploadResponseModel &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isSuccess, code, message, result);

  @override
  String toString() {
    return 'FileUploadResponseModel(isSuccess: $isSuccess, code: $code, message: $message, result: $result)';
  }
}

/// @nodoc
abstract mixin class $FileUploadResponseModelCopyWith<$Res> {
  factory $FileUploadResponseModelCopyWith(FileUploadResponseModel value,
          $Res Function(FileUploadResponseModel) _then) =
      _$FileUploadResponseModelCopyWithImpl;
  @useResult
  $Res call(
      {bool isSuccess,
      String code,
      String message,
      FileUploadResultModel? result});

  $FileUploadResultModelCopyWith<$Res>? get result;
}

/// @nodoc
class _$FileUploadResponseModelCopyWithImpl<$Res>
    implements $FileUploadResponseModelCopyWith<$Res> {
  _$FileUploadResponseModelCopyWithImpl(this._self, this._then);

  final FileUploadResponseModel _self;
  final $Res Function(FileUploadResponseModel) _then;

  /// Create a copy of FileUploadResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? code = null,
    Object? message = null,
    Object? result = freezed,
  }) {
    return _then(_self.copyWith(
      isSuccess: null == isSuccess
          ? _self.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      result: freezed == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as FileUploadResultModel?,
    ));
  }

  /// Create a copy of FileUploadResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileUploadResultModelCopyWith<$Res>? get result {
    if (_self.result == null) {
      return null;
    }

    return $FileUploadResultModelCopyWith<$Res>(_self.result!, (value) {
      return _then(_self.copyWith(result: value));
    });
  }
}

/// Adds pattern-matching-related methods to [FileUploadResponseModel].
extension FileUploadResponseModelPatterns on FileUploadResponseModel {
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
    TResult Function(_FileUploadResponseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FileUploadResponseModel() when $default != null:
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
    TResult Function(_FileUploadResponseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FileUploadResponseModel():
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
    TResult? Function(_FileUploadResponseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FileUploadResponseModel() when $default != null:
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
    TResult Function(bool isSuccess, String code, String message,
            FileUploadResultModel? result)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FileUploadResponseModel() when $default != null:
        return $default(
            _that.isSuccess, _that.code, _that.message, _that.result);
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
    TResult Function(bool isSuccess, String code, String message,
            FileUploadResultModel? result)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FileUploadResponseModel():
        return $default(
            _that.isSuccess, _that.code, _that.message, _that.result);
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
    TResult? Function(bool isSuccess, String code, String message,
            FileUploadResultModel? result)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FileUploadResponseModel() when $default != null:
        return $default(
            _that.isSuccess, _that.code, _that.message, _that.result);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FileUploadResponseModel extends FileUploadResponseModel {
  const _FileUploadResponseModel(
      {required this.isSuccess,
      required this.code,
      required this.message,
      this.result})
      : super._();
  factory _FileUploadResponseModel.fromJson(Map<String, dynamic> json) =>
      _$FileUploadResponseModelFromJson(json);

  @override
  final bool isSuccess;
  @override
  final String code;
  @override
  final String message;
  @override
  final FileUploadResultModel? result;

  /// Create a copy of FileUploadResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FileUploadResponseModelCopyWith<_FileUploadResponseModel> get copyWith =>
      __$FileUploadResponseModelCopyWithImpl<_FileUploadResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FileUploadResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FileUploadResponseModel &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isSuccess, code, message, result);

  @override
  String toString() {
    return 'FileUploadResponseModel(isSuccess: $isSuccess, code: $code, message: $message, result: $result)';
  }
}

/// @nodoc
abstract mixin class _$FileUploadResponseModelCopyWith<$Res>
    implements $FileUploadResponseModelCopyWith<$Res> {
  factory _$FileUploadResponseModelCopyWith(_FileUploadResponseModel value,
          $Res Function(_FileUploadResponseModel) _then) =
      __$FileUploadResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isSuccess,
      String code,
      String message,
      FileUploadResultModel? result});

  @override
  $FileUploadResultModelCopyWith<$Res>? get result;
}

/// @nodoc
class __$FileUploadResponseModelCopyWithImpl<$Res>
    implements _$FileUploadResponseModelCopyWith<$Res> {
  __$FileUploadResponseModelCopyWithImpl(this._self, this._then);

  final _FileUploadResponseModel _self;
  final $Res Function(_FileUploadResponseModel) _then;

  /// Create a copy of FileUploadResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isSuccess = null,
    Object? code = null,
    Object? message = null,
    Object? result = freezed,
  }) {
    return _then(_FileUploadResponseModel(
      isSuccess: null == isSuccess
          ? _self.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      result: freezed == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as FileUploadResultModel?,
    ));
  }

  /// Create a copy of FileUploadResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileUploadResultModelCopyWith<$Res>? get result {
    if (_self.result == null) {
      return null;
    }

    return $FileUploadResultModelCopyWith<$Res>(_self.result!, (value) {
      return _then(_self.copyWith(result: value));
    });
  }
}

// dart format on
