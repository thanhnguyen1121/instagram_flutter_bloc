// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'select_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SelectStateTearOff {
  const _$SelectStateTearOff();

  SelectStateData call(SelectModel selectModel) {
    return SelectStateData(
      selectModel,
    );
  }

  SelectStateLoading loading() {
    return const SelectStateLoading();
  }

  SelectStateError error(dynamic error) {
    return SelectStateError(
      error,
    );
  }
}

/// @nodoc
const $SelectState = _$SelectStateTearOff();

/// @nodoc
mixin _$SelectState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(SelectModel selectModel) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(SelectModel selectModel)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SelectStateData value) $default, {
    required TResult Function(SelectStateLoading value) loading,
    required TResult Function(SelectStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SelectStateData value)? $default, {
    TResult Function(SelectStateLoading value)? loading,
    TResult Function(SelectStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectStateCopyWith<$Res> {
  factory $SelectStateCopyWith(
          SelectState value, $Res Function(SelectState) then) =
      _$SelectStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectStateCopyWithImpl<$Res> implements $SelectStateCopyWith<$Res> {
  _$SelectStateCopyWithImpl(this._value, this._then);

  final SelectState _value;
  // ignore: unused_field
  final $Res Function(SelectState) _then;
}

/// @nodoc
abstract class $SelectStateDataCopyWith<$Res> {
  factory $SelectStateDataCopyWith(
          SelectStateData value, $Res Function(SelectStateData) then) =
      _$SelectStateDataCopyWithImpl<$Res>;
  $Res call({SelectModel selectModel});
}

/// @nodoc
class _$SelectStateDataCopyWithImpl<$Res>
    extends _$SelectStateCopyWithImpl<$Res>
    implements $SelectStateDataCopyWith<$Res> {
  _$SelectStateDataCopyWithImpl(
      SelectStateData _value, $Res Function(SelectStateData) _then)
      : super(_value, (v) => _then(v as SelectStateData));

  @override
  SelectStateData get _value => super._value as SelectStateData;

  @override
  $Res call({
    Object? selectModel = freezed,
  }) {
    return _then(SelectStateData(
      selectModel == freezed
          ? _value.selectModel
          : selectModel // ignore: cast_nullable_to_non_nullable
              as SelectModel,
    ));
  }
}

/// @nodoc

class _$SelectStateData implements SelectStateData {
  const _$SelectStateData(this.selectModel);

  @override
  final SelectModel selectModel;

  @override
  String toString() {
    return 'SelectState(selectModel: $selectModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectStateData &&
            (identical(other.selectModel, selectModel) ||
                const DeepCollectionEquality()
                    .equals(other.selectModel, selectModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(selectModel);

  @JsonKey(ignore: true)
  @override
  $SelectStateDataCopyWith<SelectStateData> get copyWith =>
      _$SelectStateDataCopyWithImpl<SelectStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(SelectModel selectModel) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default(selectModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(SelectModel selectModel)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(selectModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SelectStateData value) $default, {
    required TResult Function(SelectStateLoading value) loading,
    required TResult Function(SelectStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SelectStateData value)? $default, {
    TResult Function(SelectStateLoading value)? loading,
    TResult Function(SelectStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SelectStateData implements SelectState {
  const factory SelectStateData(SelectModel selectModel) = _$SelectStateData;

  SelectModel get selectModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectStateDataCopyWith<SelectStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectStateLoadingCopyWith<$Res> {
  factory $SelectStateLoadingCopyWith(
          SelectStateLoading value, $Res Function(SelectStateLoading) then) =
      _$SelectStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectStateLoadingCopyWithImpl<$Res>
    extends _$SelectStateCopyWithImpl<$Res>
    implements $SelectStateLoadingCopyWith<$Res> {
  _$SelectStateLoadingCopyWithImpl(
      SelectStateLoading _value, $Res Function(SelectStateLoading) _then)
      : super(_value, (v) => _then(v as SelectStateLoading));

  @override
  SelectStateLoading get _value => super._value as SelectStateLoading;
}

/// @nodoc

class _$SelectStateLoading implements SelectStateLoading {
  const _$SelectStateLoading();

  @override
  String toString() {
    return 'SelectState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SelectStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(SelectModel selectModel) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(SelectModel selectModel)? $default, {
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
    TResult Function(SelectStateData value) $default, {
    required TResult Function(SelectStateLoading value) loading,
    required TResult Function(SelectStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SelectStateData value)? $default, {
    TResult Function(SelectStateLoading value)? loading,
    TResult Function(SelectStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SelectStateLoading implements SelectState {
  const factory SelectStateLoading() = _$SelectStateLoading;
}

/// @nodoc
abstract class $SelectStateErrorCopyWith<$Res> {
  factory $SelectStateErrorCopyWith(
          SelectStateError value, $Res Function(SelectStateError) then) =
      _$SelectStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$SelectStateErrorCopyWithImpl<$Res>
    extends _$SelectStateCopyWithImpl<$Res>
    implements $SelectStateErrorCopyWith<$Res> {
  _$SelectStateErrorCopyWithImpl(
      SelectStateError _value, $Res Function(SelectStateError) _then)
      : super(_value, (v) => _then(v as SelectStateError));

  @override
  SelectStateError get _value => super._value as SelectStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SelectStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$SelectStateError implements SelectStateError {
  const _$SelectStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'SelectState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $SelectStateErrorCopyWith<SelectStateError> get copyWith =>
      _$SelectStateErrorCopyWithImpl<SelectStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(SelectModel selectModel) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(SelectModel selectModel)? $default, {
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
    TResult Function(SelectStateData value) $default, {
    required TResult Function(SelectStateLoading value) loading,
    required TResult Function(SelectStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SelectStateData value)? $default, {
    TResult Function(SelectStateLoading value)? loading,
    TResult Function(SelectStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SelectStateError implements SelectState {
  const factory SelectStateError(dynamic error) = _$SelectStateError;

  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectStateErrorCopyWith<SelectStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
