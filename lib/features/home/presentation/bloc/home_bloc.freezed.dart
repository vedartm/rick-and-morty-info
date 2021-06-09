// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  ItemSelected itemSelected(int currentScreenIndex) {
    return ItemSelected(
      currentScreenIndex,
    );
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  int get currentScreenIndex => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentScreenIndex) itemSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentScreenIndex)? itemSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemSelected value) itemSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemSelected value)? itemSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeEventCopyWith<HomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
  $Res call({int currentScreenIndex});
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;

  @override
  $Res call({
    Object? currentScreenIndex = freezed,
  }) {
    return _then(_value.copyWith(
      currentScreenIndex: currentScreenIndex == freezed
          ? _value.currentScreenIndex
          : currentScreenIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $ItemSelectedCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $ItemSelectedCopyWith(
          ItemSelected value, $Res Function(ItemSelected) then) =
      _$ItemSelectedCopyWithImpl<$Res>;
  @override
  $Res call({int currentScreenIndex});
}

/// @nodoc
class _$ItemSelectedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $ItemSelectedCopyWith<$Res> {
  _$ItemSelectedCopyWithImpl(
      ItemSelected _value, $Res Function(ItemSelected) _then)
      : super(_value, (v) => _then(v as ItemSelected));

  @override
  ItemSelected get _value => super._value as ItemSelected;

  @override
  $Res call({
    Object? currentScreenIndex = freezed,
  }) {
    return _then(ItemSelected(
      currentScreenIndex == freezed
          ? _value.currentScreenIndex
          : currentScreenIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ItemSelected implements ItemSelected {
  const _$ItemSelected(this.currentScreenIndex);

  @override
  final int currentScreenIndex;

  @override
  String toString() {
    return 'HomeEvent.itemSelected(currentScreenIndex: $currentScreenIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ItemSelected &&
            (identical(other.currentScreenIndex, currentScreenIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentScreenIndex, currentScreenIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentScreenIndex);

  @JsonKey(ignore: true)
  @override
  $ItemSelectedCopyWith<ItemSelected> get copyWith =>
      _$ItemSelectedCopyWithImpl<ItemSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentScreenIndex) itemSelected,
  }) {
    return itemSelected(currentScreenIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentScreenIndex)? itemSelected,
    required TResult orElse(),
  }) {
    if (itemSelected != null) {
      return itemSelected(currentScreenIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemSelected value) itemSelected,
  }) {
    return itemSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemSelected value)? itemSelected,
    required TResult orElse(),
  }) {
    if (itemSelected != null) {
      return itemSelected(this);
    }
    return orElse();
  }
}

abstract class ItemSelected implements HomeEvent {
  const factory ItemSelected(int currentScreenIndex) = _$ItemSelected;

  @override
  int get currentScreenIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ItemSelectedCopyWith<ItemSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  NavigationScreenChanged navigationScreenChanged(int selectedIndex) {
    return NavigationScreenChanged(
      selectedIndex,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  int get selectedIndex => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedIndex) navigationScreenChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedIndex)? navigationScreenChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationScreenChanged value)
        navigationScreenChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationScreenChanged value)? navigationScreenChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({int selectedIndex});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? selectedIndex = freezed,
  }) {
    return _then(_value.copyWith(
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $NavigationScreenChangedCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory $NavigationScreenChangedCopyWith(NavigationScreenChanged value,
          $Res Function(NavigationScreenChanged) then) =
      _$NavigationScreenChangedCopyWithImpl<$Res>;
  @override
  $Res call({int selectedIndex});
}

/// @nodoc
class _$NavigationScreenChangedCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements $NavigationScreenChangedCopyWith<$Res> {
  _$NavigationScreenChangedCopyWithImpl(NavigationScreenChanged _value,
      $Res Function(NavigationScreenChanged) _then)
      : super(_value, (v) => _then(v as NavigationScreenChanged));

  @override
  NavigationScreenChanged get _value => super._value as NavigationScreenChanged;

  @override
  $Res call({
    Object? selectedIndex = freezed,
  }) {
    return _then(NavigationScreenChanged(
      selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NavigationScreenChanged implements NavigationScreenChanged {
  const _$NavigationScreenChanged(this.selectedIndex);

  @override
  final int selectedIndex;

  @override
  String toString() {
    return 'HomeState.navigationScreenChanged(selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigationScreenChanged &&
            (identical(other.selectedIndex, selectedIndex) ||
                const DeepCollectionEquality()
                    .equals(other.selectedIndex, selectedIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(selectedIndex);

  @JsonKey(ignore: true)
  @override
  $NavigationScreenChangedCopyWith<NavigationScreenChanged> get copyWith =>
      _$NavigationScreenChangedCopyWithImpl<NavigationScreenChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedIndex) navigationScreenChanged,
  }) {
    return navigationScreenChanged(selectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedIndex)? navigationScreenChanged,
    required TResult orElse(),
  }) {
    if (navigationScreenChanged != null) {
      return navigationScreenChanged(selectedIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationScreenChanged value)
        navigationScreenChanged,
  }) {
    return navigationScreenChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationScreenChanged value)? navigationScreenChanged,
    required TResult orElse(),
  }) {
    if (navigationScreenChanged != null) {
      return navigationScreenChanged(this);
    }
    return orElse();
  }
}

abstract class NavigationScreenChanged implements HomeState {
  const factory NavigationScreenChanged(int selectedIndex) =
      _$NavigationScreenChanged;

  @override
  int get selectedIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $NavigationScreenChangedCopyWith<NavigationScreenChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
