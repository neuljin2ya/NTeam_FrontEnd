// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_me_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthMeResultModel {
  @JsonKey(name: 'nickName')
  String? get nickName;

  /// Create a copy of AuthMeResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthMeResultModelCopyWith<AuthMeResultModel> get copyWith =>
      _$AuthMeResultModelCopyWithImpl<AuthMeResultModel>(
          this as AuthMeResultModel, _$identity);

  /// Serializes this AuthMeResultModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthMeResultModel &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nickName);

  @override
  String toString() {
    return 'AuthMeResultModel(nickName: $nickName)';
  }
}

/// @nodoc
abstract mixin class $AuthMeResultModelCopyWith<$Res> {
  factory $AuthMeResultModelCopyWith(
          AuthMeResultModel value, $Res Function(AuthMeResultModel) _then) =
      _$AuthMeResultModelCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'nickName') String? nickName});
}

/// @nodoc
class _$AuthMeResultModelCopyWithImpl<$Res>
    implements $AuthMeResultModelCopyWith<$Res> {
  _$AuthMeResultModelCopyWithImpl(this._self, this._then);

  final AuthMeResultModel _self;
  final $Res Function(AuthMeResultModel) _then;

  /// Create a copy of AuthMeResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickName = freezed,
  }) {
    return _then(_self.copyWith(
      nickName: freezed == nickName
          ? _self.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AuthMeResultModel].
extension AuthMeResultModelPatterns on AuthMeResultModel {
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
    TResult Function(_AuthMeResultModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthMeResultModel() when $default != null:
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
    TResult Function(_AuthMeResultModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthMeResultModel():
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
    TResult? Function(_AuthMeResultModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthMeResultModel() when $default != null:
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
    TResult Function(@JsonKey(name: 'nickName') String? nickName)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthMeResultModel() when $default != null:
        return $default(_that.nickName);
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
    TResult Function(@JsonKey(name: 'nickName') String? nickName) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthMeResultModel():
        return $default(_that.nickName);
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
    TResult? Function(@JsonKey(name: 'nickName') String? nickName)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthMeResultModel() when $default != null:
        return $default(_that.nickName);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AuthMeResultModel implements AuthMeResultModel {
  const _AuthMeResultModel({@JsonKey(name: 'nickName') this.nickName});
  factory _AuthMeResultModel.fromJson(Map<String, dynamic> json) =>
      _$AuthMeResultModelFromJson(json);

  @override
  @JsonKey(name: 'nickName')
  final String? nickName;

  /// Create a copy of AuthMeResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthMeResultModelCopyWith<_AuthMeResultModel> get copyWith =>
      __$AuthMeResultModelCopyWithImpl<_AuthMeResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AuthMeResultModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthMeResultModel &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nickName);

  @override
  String toString() {
    return 'AuthMeResultModel(nickName: $nickName)';
  }
}

/// @nodoc
abstract mixin class _$AuthMeResultModelCopyWith<$Res>
    implements $AuthMeResultModelCopyWith<$Res> {
  factory _$AuthMeResultModelCopyWith(
          _AuthMeResultModel value, $Res Function(_AuthMeResultModel) _then) =
      __$AuthMeResultModelCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'nickName') String? nickName});
}

/// @nodoc
class __$AuthMeResultModelCopyWithImpl<$Res>
    implements _$AuthMeResultModelCopyWith<$Res> {
  __$AuthMeResultModelCopyWithImpl(this._self, this._then);

  final _AuthMeResultModel _self;
  final $Res Function(_AuthMeResultModel) _then;

  /// Create a copy of AuthMeResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? nickName = freezed,
  }) {
    return _then(_AuthMeResultModel(
      nickName: freezed == nickName
          ? _self.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
