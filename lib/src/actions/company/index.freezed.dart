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

/// @nodoc
class _$PublishMeniuTearOff {
  const _$PublishMeniuTearOff();

  PublishMeniu$ call() {
    return const PublishMeniu$();
  }

  PublishMeniuSuccessful successful() {
    return const PublishMeniuSuccessful();
  }

  PublishMeniuError error(Object error) {
    return PublishMeniuError(
      error,
    );
  }
}

/// @nodoc
const $PublishMeniu = _$PublishMeniuTearOff();

/// @nodoc
mixin _$PublishMeniu {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PublishMeniu$ value) $default, {
    required TResult Function(PublishMeniuSuccessful value) successful,
    required TResult Function(PublishMeniuError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PublishMeniu$ value)? $default, {
    TResult Function(PublishMeniuSuccessful value)? successful,
    TResult Function(PublishMeniuError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublishMeniuCopyWith<$Res> {
  factory $PublishMeniuCopyWith(
          PublishMeniu value, $Res Function(PublishMeniu) then) =
      _$PublishMeniuCopyWithImpl<$Res>;
}

/// @nodoc
class _$PublishMeniuCopyWithImpl<$Res> implements $PublishMeniuCopyWith<$Res> {
  _$PublishMeniuCopyWithImpl(this._value, this._then);

  final PublishMeniu _value;
  // ignore: unused_field
  final $Res Function(PublishMeniu) _then;
}

/// @nodoc
abstract class $PublishMeniu$CopyWith<$Res> {
  factory $PublishMeniu$CopyWith(
          PublishMeniu$ value, $Res Function(PublishMeniu$) then) =
      _$PublishMeniu$CopyWithImpl<$Res>;
}

/// @nodoc
class _$PublishMeniu$CopyWithImpl<$Res> extends _$PublishMeniuCopyWithImpl<$Res>
    implements $PublishMeniu$CopyWith<$Res> {
  _$PublishMeniu$CopyWithImpl(
      PublishMeniu$ _value, $Res Function(PublishMeniu$) _then)
      : super(_value, (v) => _then(v as PublishMeniu$));

  @override
  PublishMeniu$ get _value => super._value as PublishMeniu$;
}

/// @nodoc

class _$PublishMeniu$ implements PublishMeniu$ {
  const _$PublishMeniu$();

  @override
  String toString() {
    return 'PublishMeniu()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PublishMeniu$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PublishMeniu$ value) $default, {
    required TResult Function(PublishMeniuSuccessful value) successful,
    required TResult Function(PublishMeniuError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PublishMeniu$ value)? $default, {
    TResult Function(PublishMeniuSuccessful value)? successful,
    TResult Function(PublishMeniuError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class PublishMeniu$ implements PublishMeniu {
  const factory PublishMeniu$() = _$PublishMeniu$;
}

/// @nodoc
abstract class $PublishMeniuSuccessfulCopyWith<$Res> {
  factory $PublishMeniuSuccessfulCopyWith(PublishMeniuSuccessful value,
          $Res Function(PublishMeniuSuccessful) then) =
      _$PublishMeniuSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$PublishMeniuSuccessfulCopyWithImpl<$Res>
    extends _$PublishMeniuCopyWithImpl<$Res>
    implements $PublishMeniuSuccessfulCopyWith<$Res> {
  _$PublishMeniuSuccessfulCopyWithImpl(PublishMeniuSuccessful _value,
      $Res Function(PublishMeniuSuccessful) _then)
      : super(_value, (v) => _then(v as PublishMeniuSuccessful));

  @override
  PublishMeniuSuccessful get _value => super._value as PublishMeniuSuccessful;
}

/// @nodoc

class _$PublishMeniuSuccessful implements PublishMeniuSuccessful {
  const _$PublishMeniuSuccessful();

  @override
  String toString() {
    return 'PublishMeniu.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PublishMeniuSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PublishMeniu$ value) $default, {
    required TResult Function(PublishMeniuSuccessful value) successful,
    required TResult Function(PublishMeniuError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PublishMeniu$ value)? $default, {
    TResult Function(PublishMeniuSuccessful value)? successful,
    TResult Function(PublishMeniuError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class PublishMeniuSuccessful implements PublishMeniu {
  const factory PublishMeniuSuccessful() = _$PublishMeniuSuccessful;
}

/// @nodoc
abstract class $PublishMeniuErrorCopyWith<$Res> {
  factory $PublishMeniuErrorCopyWith(
          PublishMeniuError value, $Res Function(PublishMeniuError) then) =
      _$PublishMeniuErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$PublishMeniuErrorCopyWithImpl<$Res>
    extends _$PublishMeniuCopyWithImpl<$Res>
    implements $PublishMeniuErrorCopyWith<$Res> {
  _$PublishMeniuErrorCopyWithImpl(
      PublishMeniuError _value, $Res Function(PublishMeniuError) _then)
      : super(_value, (v) => _then(v as PublishMeniuError));

  @override
  PublishMeniuError get _value => super._value as PublishMeniuError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(PublishMeniuError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

@Implements(ErrorAction)
class _$PublishMeniuError implements PublishMeniuError {
  const _$PublishMeniuError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'PublishMeniu.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PublishMeniuError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $PublishMeniuErrorCopyWith<PublishMeniuError> get copyWith =>
      _$PublishMeniuErrorCopyWithImpl<PublishMeniuError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error)? error,
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
    TResult Function(PublishMeniu$ value) $default, {
    required TResult Function(PublishMeniuSuccessful value) successful,
    required TResult Function(PublishMeniuError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PublishMeniu$ value)? $default, {
    TResult Function(PublishMeniuSuccessful value)? successful,
    TResult Function(PublishMeniuError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PublishMeniuError implements PublishMeniu, ErrorAction {
  const factory PublishMeniuError(Object error) = _$PublishMeniuError;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PublishMeniuErrorCopyWith<PublishMeniuError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetDailyMeniuTearOff {
  const _$GetDailyMeniuTearOff();

  GetDailyMeniu$ call() {
    return const GetDailyMeniu$();
  }

  GetDailyMeniuSuccessful successful(Meniu meniu) {
    return GetDailyMeniuSuccessful(
      meniu,
    );
  }

  GetDailyMeniuError error(Object error) {
    return GetDailyMeniuError(
      error,
    );
  }
}

/// @nodoc
const $GetDailyMeniu = _$GetDailyMeniuTearOff();

/// @nodoc
mixin _$GetDailyMeniu {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Meniu meniu) successful,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Meniu meniu)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetDailyMeniu$ value) $default, {
    required TResult Function(GetDailyMeniuSuccessful value) successful,
    required TResult Function(GetDailyMeniuError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetDailyMeniu$ value)? $default, {
    TResult Function(GetDailyMeniuSuccessful value)? successful,
    TResult Function(GetDailyMeniuError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDailyMeniuCopyWith<$Res> {
  factory $GetDailyMeniuCopyWith(
          GetDailyMeniu value, $Res Function(GetDailyMeniu) then) =
      _$GetDailyMeniuCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetDailyMeniuCopyWithImpl<$Res>
    implements $GetDailyMeniuCopyWith<$Res> {
  _$GetDailyMeniuCopyWithImpl(this._value, this._then);

  final GetDailyMeniu _value;
  // ignore: unused_field
  final $Res Function(GetDailyMeniu) _then;
}

/// @nodoc
abstract class $GetDailyMeniu$CopyWith<$Res> {
  factory $GetDailyMeniu$CopyWith(
          GetDailyMeniu$ value, $Res Function(GetDailyMeniu$) then) =
      _$GetDailyMeniu$CopyWithImpl<$Res>;
}

/// @nodoc
class _$GetDailyMeniu$CopyWithImpl<$Res>
    extends _$GetDailyMeniuCopyWithImpl<$Res>
    implements $GetDailyMeniu$CopyWith<$Res> {
  _$GetDailyMeniu$CopyWithImpl(
      GetDailyMeniu$ _value, $Res Function(GetDailyMeniu$) _then)
      : super(_value, (v) => _then(v as GetDailyMeniu$));

  @override
  GetDailyMeniu$ get _value => super._value as GetDailyMeniu$;
}

/// @nodoc

class _$GetDailyMeniu$ implements GetDailyMeniu$ {
  const _$GetDailyMeniu$();

  @override
  String toString() {
    return 'GetDailyMeniu()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetDailyMeniu$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Meniu meniu) successful,
    required TResult Function(Object error) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Meniu meniu)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetDailyMeniu$ value) $default, {
    required TResult Function(GetDailyMeniuSuccessful value) successful,
    required TResult Function(GetDailyMeniuError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetDailyMeniu$ value)? $default, {
    TResult Function(GetDailyMeniuSuccessful value)? successful,
    TResult Function(GetDailyMeniuError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetDailyMeniu$ implements GetDailyMeniu {
  const factory GetDailyMeniu$() = _$GetDailyMeniu$;
}

/// @nodoc
abstract class $GetDailyMeniuSuccessfulCopyWith<$Res> {
  factory $GetDailyMeniuSuccessfulCopyWith(GetDailyMeniuSuccessful value,
          $Res Function(GetDailyMeniuSuccessful) then) =
      _$GetDailyMeniuSuccessfulCopyWithImpl<$Res>;
  $Res call({Meniu meniu});
}

/// @nodoc
class _$GetDailyMeniuSuccessfulCopyWithImpl<$Res>
    extends _$GetDailyMeniuCopyWithImpl<$Res>
    implements $GetDailyMeniuSuccessfulCopyWith<$Res> {
  _$GetDailyMeniuSuccessfulCopyWithImpl(GetDailyMeniuSuccessful _value,
      $Res Function(GetDailyMeniuSuccessful) _then)
      : super(_value, (v) => _then(v as GetDailyMeniuSuccessful));

  @override
  GetDailyMeniuSuccessful get _value => super._value as GetDailyMeniuSuccessful;

  @override
  $Res call({
    Object? meniu = freezed,
  }) {
    return _then(GetDailyMeniuSuccessful(
      meniu == freezed
          ? _value.meniu
          : meniu // ignore: cast_nullable_to_non_nullable
              as Meniu,
    ));
  }
}

/// @nodoc

class _$GetDailyMeniuSuccessful implements GetDailyMeniuSuccessful {
  const _$GetDailyMeniuSuccessful(this.meniu);

  @override
  final Meniu meniu;

  @override
  String toString() {
    return 'GetDailyMeniu.successful(meniu: $meniu)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetDailyMeniuSuccessful &&
            (identical(other.meniu, meniu) ||
                const DeepCollectionEquality().equals(other.meniu, meniu)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(meniu);

  @JsonKey(ignore: true)
  @override
  $GetDailyMeniuSuccessfulCopyWith<GetDailyMeniuSuccessful> get copyWith =>
      _$GetDailyMeniuSuccessfulCopyWithImpl<GetDailyMeniuSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Meniu meniu) successful,
    required TResult Function(Object error) error,
  }) {
    return successful(meniu);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Meniu meniu)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(meniu);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetDailyMeniu$ value) $default, {
    required TResult Function(GetDailyMeniuSuccessful value) successful,
    required TResult Function(GetDailyMeniuError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetDailyMeniu$ value)? $default, {
    TResult Function(GetDailyMeniuSuccessful value)? successful,
    TResult Function(GetDailyMeniuError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetDailyMeniuSuccessful implements GetDailyMeniu {
  const factory GetDailyMeniuSuccessful(Meniu meniu) =
      _$GetDailyMeniuSuccessful;

  Meniu get meniu => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDailyMeniuSuccessfulCopyWith<GetDailyMeniuSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDailyMeniuErrorCopyWith<$Res> {
  factory $GetDailyMeniuErrorCopyWith(
          GetDailyMeniuError value, $Res Function(GetDailyMeniuError) then) =
      _$GetDailyMeniuErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetDailyMeniuErrorCopyWithImpl<$Res>
    extends _$GetDailyMeniuCopyWithImpl<$Res>
    implements $GetDailyMeniuErrorCopyWith<$Res> {
  _$GetDailyMeniuErrorCopyWithImpl(
      GetDailyMeniuError _value, $Res Function(GetDailyMeniuError) _then)
      : super(_value, (v) => _then(v as GetDailyMeniuError));

  @override
  GetDailyMeniuError get _value => super._value as GetDailyMeniuError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(GetDailyMeniuError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

@Implements(ErrorAction)
class _$GetDailyMeniuError implements GetDailyMeniuError {
  const _$GetDailyMeniuError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetDailyMeniu.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetDailyMeniuError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $GetDailyMeniuErrorCopyWith<GetDailyMeniuError> get copyWith =>
      _$GetDailyMeniuErrorCopyWithImpl<GetDailyMeniuError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Meniu meniu) successful,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Meniu meniu)? successful,
    TResult Function(Object error)? error,
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
    TResult Function(GetDailyMeniu$ value) $default, {
    required TResult Function(GetDailyMeniuSuccessful value) successful,
    required TResult Function(GetDailyMeniuError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetDailyMeniu$ value)? $default, {
    TResult Function(GetDailyMeniuSuccessful value)? successful,
    TResult Function(GetDailyMeniuError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetDailyMeniuError implements GetDailyMeniu, ErrorAction {
  const factory GetDailyMeniuError(Object error) = _$GetDailyMeniuError;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDailyMeniuErrorCopyWith<GetDailyMeniuError> get copyWith =>
      throw _privateConstructorUsedError;
}
