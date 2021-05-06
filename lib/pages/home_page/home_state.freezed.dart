// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  HomeStateData call(List<StoryModel> storyModels, List<PostModel> PostModels) {
    return HomeStateData(
      storyModels,
      PostModels,
    );
  }

  HomeStateLoading loading() {
    return const HomeStateLoading();
  }

  HomeStateError error(dynamic error) {
    return HomeStateError(
      error,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<StoryModel> storyModels, List<PostModel> PostModels)
        $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<StoryModel> storyModels, List<PostModel> PostModels)?
        $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(HomeStateData value) $default, {
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(HomeStateData value)? $default, {
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class $HomeStateDataCopyWith<$Res> {
  factory $HomeStateDataCopyWith(
          HomeStateData value, $Res Function(HomeStateData) then) =
      _$HomeStateDataCopyWithImpl<$Res>;
  $Res call({List<StoryModel> storyModels, List<PostModel> PostModels});
}

/// @nodoc
class _$HomeStateDataCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateDataCopyWith<$Res> {
  _$HomeStateDataCopyWithImpl(
      HomeStateData _value, $Res Function(HomeStateData) _then)
      : super(_value, (v) => _then(v as HomeStateData));

  @override
  HomeStateData get _value => super._value as HomeStateData;

  @override
  $Res call({
    Object? storyModels = freezed,
    Object? PostModels = freezed,
  }) {
    return _then(HomeStateData(
      storyModels == freezed
          ? _value.storyModels
          : storyModels // ignore: cast_nullable_to_non_nullable
              as List<StoryModel>,
      PostModels == freezed
          ? _value.PostModels
          : PostModels // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
    ));
  }
}

/// @nodoc

class _$HomeStateData implements HomeStateData {
  const _$HomeStateData(this.storyModels, this.PostModels);

  @override
  final List<StoryModel> storyModels;
  @override
  final List<PostModel> PostModels;

  @override
  String toString() {
    return 'HomeState(storyModels: $storyModels, PostModels: $PostModels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HomeStateData &&
            (identical(other.storyModels, storyModels) ||
                const DeepCollectionEquality()
                    .equals(other.storyModels, storyModels)) &&
            (identical(other.PostModels, PostModels) ||
                const DeepCollectionEquality()
                    .equals(other.PostModels, PostModels)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(storyModels) ^
      const DeepCollectionEquality().hash(PostModels);

  @JsonKey(ignore: true)
  @override
  $HomeStateDataCopyWith<HomeStateData> get copyWith =>
      _$HomeStateDataCopyWithImpl<HomeStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<StoryModel> storyModels, List<PostModel> PostModels)
        $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default(storyModels, PostModels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<StoryModel> storyModels, List<PostModel> PostModels)?
        $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(storyModels, PostModels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(HomeStateData value) $default, {
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(HomeStateData value)? $default, {
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class HomeStateData implements HomeState {
  const factory HomeStateData(
          List<StoryModel> storyModels, List<PostModel> PostModels) =
      _$HomeStateData;

  List<StoryModel> get storyModels => throw _privateConstructorUsedError;
  List<PostModel> get PostModels => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeStateDataCopyWith<HomeStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateLoadingCopyWith<$Res> {
  factory $HomeStateLoadingCopyWith(
          HomeStateLoading value, $Res Function(HomeStateLoading) then) =
      _$HomeStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateLoadingCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateLoadingCopyWith<$Res> {
  _$HomeStateLoadingCopyWithImpl(
      HomeStateLoading _value, $Res Function(HomeStateLoading) _then)
      : super(_value, (v) => _then(v as HomeStateLoading));

  @override
  HomeStateLoading get _value => super._value as HomeStateLoading;
}

/// @nodoc

class _$HomeStateLoading implements HomeStateLoading {
  const _$HomeStateLoading();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HomeStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<StoryModel> storyModels, List<PostModel> PostModels)
        $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<StoryModel> storyModels, List<PostModel> PostModels)?
        $default, {
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
    TResult Function(HomeStateData value) $default, {
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(HomeStateData value)? $default, {
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeStateLoading implements HomeState {
  const factory HomeStateLoading() = _$HomeStateLoading;
}

/// @nodoc
abstract class $HomeStateErrorCopyWith<$Res> {
  factory $HomeStateErrorCopyWith(
          HomeStateError value, $Res Function(HomeStateError) then) =
      _$HomeStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$HomeStateErrorCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateErrorCopyWith<$Res> {
  _$HomeStateErrorCopyWithImpl(
      HomeStateError _value, $Res Function(HomeStateError) _then)
      : super(_value, (v) => _then(v as HomeStateError));

  @override
  HomeStateError get _value => super._value as HomeStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(HomeStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$HomeStateError implements HomeStateError {
  const _$HomeStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'HomeState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HomeStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $HomeStateErrorCopyWith<HomeStateError> get copyWith =>
      _$HomeStateErrorCopyWithImpl<HomeStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<StoryModel> storyModels, List<PostModel> PostModels)
        $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<StoryModel> storyModels, List<PostModel> PostModels)?
        $default, {
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
    TResult Function(HomeStateData value) $default, {
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(HomeStateData value)? $default, {
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HomeStateError implements HomeState {
  const factory HomeStateError(dynamic error) = _$HomeStateError;

  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeStateErrorCopyWith<HomeStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
