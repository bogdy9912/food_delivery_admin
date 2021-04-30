// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of company_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UpdateCategoriesTearOff {
  const _$UpdateCategoriesTearOff();

  UpdateCategories$ call({MeniuItem? add, MeniuItem? remove}) {
    return UpdateCategories$(
      add: add,
      remove: remove,
    );
  }
}

/// @nodoc
const $UpdateCategories = _$UpdateCategoriesTearOff();

/// @nodoc
mixin _$UpdateCategories {
  MeniuItem? get add => throw _privateConstructorUsedError;
  MeniuItem? get remove => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateCategoriesCopyWith<UpdateCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCategoriesCopyWith<$Res> {
  factory $UpdateCategoriesCopyWith(
          UpdateCategories value, $Res Function(UpdateCategories) then) =
      _$UpdateCategoriesCopyWithImpl<$Res>;
  $Res call({MeniuItem? add, MeniuItem? remove});
}

/// @nodoc
class _$UpdateCategoriesCopyWithImpl<$Res>
    implements $UpdateCategoriesCopyWith<$Res> {
  _$UpdateCategoriesCopyWithImpl(this._value, this._then);

  final UpdateCategories _value;
  // ignore: unused_field
  final $Res Function(UpdateCategories) _then;

  @override
  $Res call({
    Object? add = freezed,
    Object? remove = freezed,
  }) {
    return _then(_value.copyWith(
      add: add == freezed
          ? _value.add
          : add // ignore: cast_nullable_to_non_nullable
              as MeniuItem?,
      remove: remove == freezed
          ? _value.remove
          : remove // ignore: cast_nullable_to_non_nullable
              as MeniuItem?,
    ));
  }
}

/// @nodoc
abstract class $UpdateCategories$CopyWith<$Res>
    implements $UpdateCategoriesCopyWith<$Res> {
  factory $UpdateCategories$CopyWith(
          UpdateCategories$ value, $Res Function(UpdateCategories$) then) =
      _$UpdateCategories$CopyWithImpl<$Res>;
  @override
  $Res call({MeniuItem? add, MeniuItem? remove});
}

/// @nodoc
class _$UpdateCategories$CopyWithImpl<$Res>
    extends _$UpdateCategoriesCopyWithImpl<$Res>
    implements $UpdateCategories$CopyWith<$Res> {
  _$UpdateCategories$CopyWithImpl(
      UpdateCategories$ _value, $Res Function(UpdateCategories$) _then)
      : super(_value, (v) => _then(v as UpdateCategories$));

  @override
  UpdateCategories$ get _value => super._value as UpdateCategories$;

  @override
  $Res call({
    Object? add = freezed,
    Object? remove = freezed,
  }) {
    return _then(UpdateCategories$(
      add: add == freezed
          ? _value.add
          : add // ignore: cast_nullable_to_non_nullable
              as MeniuItem?,
      remove: remove == freezed
          ? _value.remove
          : remove // ignore: cast_nullable_to_non_nullable
              as MeniuItem?,
    ));
  }
}

/// @nodoc
class _$UpdateCategories$ implements UpdateCategories$ {
  const _$UpdateCategories$({this.add, this.remove});

  @override
  final MeniuItem? add;
  @override
  final MeniuItem? remove;

  @override
  String toString() {
    return 'UpdateCategories(add: $add, remove: $remove)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateCategories$ &&
            (identical(other.add, add) ||
                const DeepCollectionEquality().equals(other.add, add)) &&
            (identical(other.remove, remove) ||
                const DeepCollectionEquality().equals(other.remove, remove)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(add) ^
      const DeepCollectionEquality().hash(remove);

  @JsonKey(ignore: true)
  @override
  $UpdateCategories$CopyWith<UpdateCategories$> get copyWith =>
      _$UpdateCategories$CopyWithImpl<UpdateCategories$>(this, _$identity);
}

abstract class UpdateCategories$ implements UpdateCategories {
  const factory UpdateCategories$({MeniuItem? add, MeniuItem? remove}) =
      _$UpdateCategories$;

  @override
  MeniuItem? get add => throw _privateConstructorUsedError;
  @override
  MeniuItem? get remove => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $UpdateCategories$CopyWith<UpdateCategories$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UpdateDishesTearOff {
  const _$UpdateDishesTearOff();

  UpdateDishes$ call({Dish? add, Dish? remove, required String categoryId}) {
    return UpdateDishes$(
      add: add,
      remove: remove,
      categoryId: categoryId,
    );
  }
}

/// @nodoc
const $UpdateDishes = _$UpdateDishesTearOff();

/// @nodoc
mixin _$UpdateDishes {
  Dish? get add => throw _privateConstructorUsedError;
  Dish? get remove => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateDishesCopyWith<UpdateDishes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateDishesCopyWith<$Res> {
  factory $UpdateDishesCopyWith(
          UpdateDishes value, $Res Function(UpdateDishes) then) =
      _$UpdateDishesCopyWithImpl<$Res>;
  $Res call({Dish? add, Dish? remove, String categoryId});
}

/// @nodoc
class _$UpdateDishesCopyWithImpl<$Res> implements $UpdateDishesCopyWith<$Res> {
  _$UpdateDishesCopyWithImpl(this._value, this._then);

  final UpdateDishes _value;
  // ignore: unused_field
  final $Res Function(UpdateDishes) _then;

  @override
  $Res call({
    Object? add = freezed,
    Object? remove = freezed,
    Object? categoryId = freezed,
  }) {
    return _then(_value.copyWith(
      add: add == freezed
          ? _value.add
          : add // ignore: cast_nullable_to_non_nullable
              as Dish?,
      remove: remove == freezed
          ? _value.remove
          : remove // ignore: cast_nullable_to_non_nullable
              as Dish?,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $UpdateDishes$CopyWith<$Res>
    implements $UpdateDishesCopyWith<$Res> {
  factory $UpdateDishes$CopyWith(
          UpdateDishes$ value, $Res Function(UpdateDishes$) then) =
      _$UpdateDishes$CopyWithImpl<$Res>;
  @override
  $Res call({Dish? add, Dish? remove, String categoryId});
}

/// @nodoc
class _$UpdateDishes$CopyWithImpl<$Res> extends _$UpdateDishesCopyWithImpl<$Res>
    implements $UpdateDishes$CopyWith<$Res> {
  _$UpdateDishes$CopyWithImpl(
      UpdateDishes$ _value, $Res Function(UpdateDishes$) _then)
      : super(_value, (v) => _then(v as UpdateDishes$));

  @override
  UpdateDishes$ get _value => super._value as UpdateDishes$;

  @override
  $Res call({
    Object? add = freezed,
    Object? remove = freezed,
    Object? categoryId = freezed,
  }) {
    return _then(UpdateDishes$(
      add: add == freezed
          ? _value.add
          : add // ignore: cast_nullable_to_non_nullable
              as Dish?,
      remove: remove == freezed
          ? _value.remove
          : remove // ignore: cast_nullable_to_non_nullable
              as Dish?,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$UpdateDishes$ implements UpdateDishes$ {
  const _$UpdateDishes$({this.add, this.remove, required this.categoryId});

  @override
  final Dish? add;
  @override
  final Dish? remove;
  @override
  final String categoryId;

  @override
  String toString() {
    return 'UpdateDishes(add: $add, remove: $remove, categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateDishes$ &&
            (identical(other.add, add) ||
                const DeepCollectionEquality().equals(other.add, add)) &&
            (identical(other.remove, remove) ||
                const DeepCollectionEquality().equals(other.remove, remove)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(add) ^
      const DeepCollectionEquality().hash(remove) ^
      const DeepCollectionEquality().hash(categoryId);

  @JsonKey(ignore: true)
  @override
  $UpdateDishes$CopyWith<UpdateDishes$> get copyWith =>
      _$UpdateDishes$CopyWithImpl<UpdateDishes$>(this, _$identity);
}

abstract class UpdateDishes$ implements UpdateDishes {
  const factory UpdateDishes$(
      {Dish? add, Dish? remove, required String categoryId}) = _$UpdateDishes$;

  @override
  Dish? get add => throw _privateConstructorUsedError;
  @override
  Dish? get remove => throw _privateConstructorUsedError;
  @override
  String get categoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $UpdateDishes$CopyWith<UpdateDishes$> get copyWith =>
      throw _privateConstructorUsedError;
}
