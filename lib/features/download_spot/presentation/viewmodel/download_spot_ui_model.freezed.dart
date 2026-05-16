// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_spot_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DownloadSpotUiModel {
  List<Spot> get spots;
  bool get isLoading;
  String? get errorMessage;

  /// Create a copy of DownloadSpotUiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DownloadSpotUiModelCopyWith<DownloadSpotUiModel> get copyWith =>
      _$DownloadSpotUiModelCopyWithImpl<DownloadSpotUiModel>(
          this as DownloadSpotUiModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DownloadSpotUiModel &&
            const DeepCollectionEquality().equals(other.spots, spots) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(spots), isLoading, errorMessage);

  @override
  String toString() {
    return 'DownloadSpotUiModel(spots: $spots, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $DownloadSpotUiModelCopyWith<$Res> {
  factory $DownloadSpotUiModelCopyWith(
          DownloadSpotUiModel value, $Res Function(DownloadSpotUiModel) _then) =
      _$DownloadSpotUiModelCopyWithImpl;
  @useResult
  $Res call({List<Spot> spots, bool isLoading, String? errorMessage});
}

/// @nodoc
class _$DownloadSpotUiModelCopyWithImpl<$Res>
    implements $DownloadSpotUiModelCopyWith<$Res> {
  _$DownloadSpotUiModelCopyWithImpl(this._self, this._then);

  final DownloadSpotUiModel _self;
  final $Res Function(DownloadSpotUiModel) _then;

  /// Create a copy of DownloadSpotUiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spots = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      spots: null == spots
          ? _self.spots
          : spots // ignore: cast_nullable_to_non_nullable
              as List<Spot>,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [DownloadSpotUiModel].
extension DownloadSpotUiModelPatterns on DownloadSpotUiModel {
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
    TResult Function(_DownloadSpotUiModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DownloadSpotUiModel() when $default != null:
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
    TResult Function(_DownloadSpotUiModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DownloadSpotUiModel():
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
    TResult? Function(_DownloadSpotUiModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DownloadSpotUiModel() when $default != null:
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
    TResult Function(List<Spot> spots, bool isLoading, String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DownloadSpotUiModel() when $default != null:
        return $default(_that.spots, _that.isLoading, _that.errorMessage);
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
    TResult Function(List<Spot> spots, bool isLoading, String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DownloadSpotUiModel():
        return $default(_that.spots, _that.isLoading, _that.errorMessage);
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
    TResult? Function(List<Spot> spots, bool isLoading, String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DownloadSpotUiModel() when $default != null:
        return $default(_that.spots, _that.isLoading, _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DownloadSpotUiModel implements DownloadSpotUiModel {
  const _DownloadSpotUiModel(
      {final List<Spot> spots = const <Spot>[],
      this.isLoading = false,
      this.errorMessage})
      : _spots = spots;

  final List<Spot> _spots;
  @override
  @JsonKey()
  List<Spot> get spots {
    if (_spots is EqualUnmodifiableListView) return _spots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spots);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  /// Create a copy of DownloadSpotUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DownloadSpotUiModelCopyWith<_DownloadSpotUiModel> get copyWith =>
      __$DownloadSpotUiModelCopyWithImpl<_DownloadSpotUiModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DownloadSpotUiModel &&
            const DeepCollectionEquality().equals(other._spots, _spots) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_spots), isLoading, errorMessage);

  @override
  String toString() {
    return 'DownloadSpotUiModel(spots: $spots, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$DownloadSpotUiModelCopyWith<$Res>
    implements $DownloadSpotUiModelCopyWith<$Res> {
  factory _$DownloadSpotUiModelCopyWith(_DownloadSpotUiModel value,
          $Res Function(_DownloadSpotUiModel) _then) =
      __$DownloadSpotUiModelCopyWithImpl;
  @override
  @useResult
  $Res call({List<Spot> spots, bool isLoading, String? errorMessage});
}

/// @nodoc
class __$DownloadSpotUiModelCopyWithImpl<$Res>
    implements _$DownloadSpotUiModelCopyWith<$Res> {
  __$DownloadSpotUiModelCopyWithImpl(this._self, this._then);

  final _DownloadSpotUiModel _self;
  final $Res Function(_DownloadSpotUiModel) _then;

  /// Create a copy of DownloadSpotUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? spots = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_DownloadSpotUiModel(
      spots: null == spots
          ? _self._spots
          : spots // ignore: cast_nullable_to_non_nullable
              as List<Spot>,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
