// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'comment_post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommentPostStateTearOff {
  const _$CommentPostStateTearOff();

  CommentPostStateData call(List<CommentModel> commentModels) {
    return CommentPostStateData(
      commentModels,
    );
  }

  CommentPostStateLoading loading() {
    return const CommentPostStateLoading();
  }

  CommentPostStateError error(dynamic error) {
    return CommentPostStateError(
      error,
    );
  }
}

/// @nodoc
const $CommentPostState = _$CommentPostStateTearOff();

/// @nodoc
mixin _$CommentPostState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CommentModel> commentModels) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CommentModel> commentModels)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommentPostStateData value) $default, {
    required TResult Function(CommentPostStateLoading value) loading,
    required TResult Function(CommentPostStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommentPostStateData value)? $default, {
    TResult Function(CommentPostStateLoading value)? loading,
    TResult Function(CommentPostStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentPostStateCopyWith<$Res> {
  factory $CommentPostStateCopyWith(
          CommentPostState value, $Res Function(CommentPostState) then) =
      _$CommentPostStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommentPostStateCopyWithImpl<$Res>
    implements $CommentPostStateCopyWith<$Res> {
  _$CommentPostStateCopyWithImpl(this._value, this._then);

  final CommentPostState _value;
  // ignore: unused_field
  final $Res Function(CommentPostState) _then;
}

/// @nodoc
abstract class $CommentPostStateDataCopyWith<$Res> {
  factory $CommentPostStateDataCopyWith(CommentPostStateData value,
          $Res Function(CommentPostStateData) then) =
      _$CommentPostStateDataCopyWithImpl<$Res>;
  $Res call({List<CommentModel> commentModels});
}

/// @nodoc
class _$CommentPostStateDataCopyWithImpl<$Res>
    extends _$CommentPostStateCopyWithImpl<$Res>
    implements $CommentPostStateDataCopyWith<$Res> {
  _$CommentPostStateDataCopyWithImpl(
      CommentPostStateData _value, $Res Function(CommentPostStateData) _then)
      : super(_value, (v) => _then(v as CommentPostStateData));

  @override
  CommentPostStateData get _value => super._value as CommentPostStateData;

  @override
  $Res call({
    Object? commentModels = freezed,
  }) {
    return _then(CommentPostStateData(
      commentModels == freezed
          ? _value.commentModels
          : commentModels // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
    ));
  }
}

/// @nodoc

class _$CommentPostStateData implements CommentPostStateData {
  const _$CommentPostStateData(this.commentModels);

  @override
  final List<CommentModel> commentModels;

  @override
  String toString() {
    return 'CommentPostState(commentModels: $commentModels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommentPostStateData &&
            (identical(other.commentModels, commentModels) ||
                const DeepCollectionEquality()
                    .equals(other.commentModels, commentModels)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(commentModels);

  @JsonKey(ignore: true)
  @override
  $CommentPostStateDataCopyWith<CommentPostStateData> get copyWith =>
      _$CommentPostStateDataCopyWithImpl<CommentPostStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CommentModel> commentModels) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default(commentModels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CommentModel> commentModels)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(commentModels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommentPostStateData value) $default, {
    required TResult Function(CommentPostStateLoading value) loading,
    required TResult Function(CommentPostStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommentPostStateData value)? $default, {
    TResult Function(CommentPostStateLoading value)? loading,
    TResult Function(CommentPostStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommentPostStateData implements CommentPostState {
  const factory CommentPostStateData(List<CommentModel> commentModels) =
      _$CommentPostStateData;

  List<CommentModel> get commentModels => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentPostStateDataCopyWith<CommentPostStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentPostStateLoadingCopyWith<$Res> {
  factory $CommentPostStateLoadingCopyWith(CommentPostStateLoading value,
          $Res Function(CommentPostStateLoading) then) =
      _$CommentPostStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommentPostStateLoadingCopyWithImpl<$Res>
    extends _$CommentPostStateCopyWithImpl<$Res>
    implements $CommentPostStateLoadingCopyWith<$Res> {
  _$CommentPostStateLoadingCopyWithImpl(CommentPostStateLoading _value,
      $Res Function(CommentPostStateLoading) _then)
      : super(_value, (v) => _then(v as CommentPostStateLoading));

  @override
  CommentPostStateLoading get _value => super._value as CommentPostStateLoading;
}

/// @nodoc

class _$CommentPostStateLoading implements CommentPostStateLoading {
  const _$CommentPostStateLoading();

  @override
  String toString() {
    return 'CommentPostState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CommentPostStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CommentModel> commentModels) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CommentModel> commentModels)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommentPostStateData value) $default, {
    required TResult Function(CommentPostStateLoading value) loading,
    required TResult Function(CommentPostStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommentPostStateData value)? $default, {
    TResult Function(CommentPostStateLoading value)? loading,
    TResult Function(CommentPostStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommentPostStateLoading implements CommentPostState {
  const factory CommentPostStateLoading() = _$CommentPostStateLoading;
}

/// @nodoc
abstract class $CommentPostStateErrorCopyWith<$Res> {
  factory $CommentPostStateErrorCopyWith(CommentPostStateError value,
          $Res Function(CommentPostStateError) then) =
      _$CommentPostStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$CommentPostStateErrorCopyWithImpl<$Res>
    extends _$CommentPostStateCopyWithImpl<$Res>
    implements $CommentPostStateErrorCopyWith<$Res> {
  _$CommentPostStateErrorCopyWithImpl(
      CommentPostStateError _value, $Res Function(CommentPostStateError) _then)
      : super(_value, (v) => _then(v as CommentPostStateError));

  @override
  CommentPostStateError get _value => super._value as CommentPostStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommentPostStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$CommentPostStateError implements CommentPostStateError {
  const _$CommentPostStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'CommentPostState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommentPostStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommentPostStateErrorCopyWith<CommentPostStateError> get copyWith =>
      _$CommentPostStateErrorCopyWithImpl<CommentPostStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CommentModel> commentModels) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CommentModel> commentModels)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommentPostStateData value) $default, {
    required TResult Function(CommentPostStateLoading value) loading,
    required TResult Function(CommentPostStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommentPostStateData value)? $default, {
    TResult Function(CommentPostStateLoading value)? loading,
    TResult Function(CommentPostStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommentPostStateError implements CommentPostState {
  const factory CommentPostStateError(dynamic error) = _$CommentPostStateError;

  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentPostStateErrorCopyWith<CommentPostStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
