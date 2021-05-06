// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of auth_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginTearOff {
  const _$LoginTearOff();

  Login$ call(
      {required String email,
      required String password,
      required void Function(AppAction) response}) {
    return Login$(
      email: email,
      password: password,
      response: response,
    );
  }

  LoginSuccessful successful(AdminUser user) {
    return LoginSuccessful(
      user,
    );
  }

  LoginError error(Object error) {
    return LoginError(
      error,
    );
  }
}

/// @nodoc
const $Login = _$LoginTearOff();

/// @nodoc
mixin _$Login {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String email, String password, void Function(AppAction) response)
        $default, {
    required TResult Function(AdminUser user) successful,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String email, String password, void Function(AppAction) response)?
        $default, {
    TResult Function(AdminUser user)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Login$ value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Login$ value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginCopyWithImpl<$Res> implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._value, this._then);

  final Login _value;
  // ignore: unused_field
  final $Res Function(Login) _then;
}

/// @nodoc
abstract class $Login$CopyWith<$Res> {
  factory $Login$CopyWith(Login$ value, $Res Function(Login$) then) =
      _$Login$CopyWithImpl<$Res>;
  $Res call({String email, String password, void Function(AppAction) response});
}

/// @nodoc
class _$Login$CopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $Login$CopyWith<$Res> {
  _$Login$CopyWithImpl(Login$ _value, $Res Function(Login$) _then)
      : super(_value, (v) => _then(v as Login$));

  @override
  Login$ get _value => super._value as Login$;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? response = freezed,
  }) {
    return _then(Login$(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as void Function(AppAction),
    ));
  }
}

/// @nodoc
class _$Login$ implements Login$ {
  const _$Login$(
      {required this.email, required this.password, required this.response});

  @override
  final String email;
  @override
  final String password;
  @override
  final void Function(AppAction) response;

  @override
  String toString() {
    return 'Login(email: $email, password: $password, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Login$ &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  $Login$CopyWith<Login$> get copyWith =>
      _$Login$CopyWithImpl<Login$>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String email, String password, void Function(AppAction) response)
        $default, {
    required TResult Function(AdminUser user) successful,
    required TResult Function(Object error) error,
  }) {
    return $default(email, password, response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String email, String password, void Function(AppAction) response)?
        $default, {
    TResult Function(AdminUser user)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email, password, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Login$ value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Login$ value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Login$ implements Login {
  const factory Login$(
      {required String email,
      required String password,
      required void Function(AppAction) response}) = _$Login$;

  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  void Function(AppAction) get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Login$CopyWith<Login$> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginSuccessfulCopyWith<$Res> {
  factory $LoginSuccessfulCopyWith(
          LoginSuccessful value, $Res Function(LoginSuccessful) then) =
      _$LoginSuccessfulCopyWithImpl<$Res>;
  $Res call({AdminUser user});
}

/// @nodoc
class _$LoginSuccessfulCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $LoginSuccessfulCopyWith<$Res> {
  _$LoginSuccessfulCopyWithImpl(
      LoginSuccessful _value, $Res Function(LoginSuccessful) _then)
      : super(_value, (v) => _then(v as LoginSuccessful));

  @override
  LoginSuccessful get _value => super._value as LoginSuccessful;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(LoginSuccessful(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AdminUser,
    ));
  }
}

/// @nodoc
class _$LoginSuccessful implements LoginSuccessful {
  const _$LoginSuccessful(this.user);

  @override
  final AdminUser user;

  @override
  String toString() {
    return 'Login.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $LoginSuccessfulCopyWith<LoginSuccessful> get copyWith =>
      _$LoginSuccessfulCopyWithImpl<LoginSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String email, String password, void Function(AppAction) response)
        $default, {
    required TResult Function(AdminUser user) successful,
    required TResult Function(Object error) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String email, String password, void Function(AppAction) response)?
        $default, {
    TResult Function(AdminUser user)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Login$ value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Login$ value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LoginSuccessful implements Login {
  const factory LoginSuccessful(AdminUser user) = _$LoginSuccessful;

  AdminUser get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginSuccessfulCopyWith<LoginSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginErrorCopyWith<$Res> {
  factory $LoginErrorCopyWith(
          LoginError value, $Res Function(LoginError) then) =
      _$LoginErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$LoginErrorCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $LoginErrorCopyWith<$Res> {
  _$LoginErrorCopyWithImpl(LoginError _value, $Res Function(LoginError) _then)
      : super(_value, (v) => _then(v as LoginError));

  @override
  LoginError get _value => super._value as LoginError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(LoginError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$LoginError implements LoginError {
  const _$LoginError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'Login.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $LoginErrorCopyWith<LoginError> get copyWith =>
      _$LoginErrorCopyWithImpl<LoginError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String email, String password, void Function(AppAction) response)
        $default, {
    required TResult Function(AdminUser user) successful,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String email, String password, void Function(AppAction) response)?
        $default, {
    TResult Function(AdminUser user)? successful,
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
    TResult Function(Login$ value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Login$ value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginError implements Login, ErrorAction {
  const factory LoginError(Object error) = _$LoginError;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginErrorCopyWith<LoginError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RegisterTearOff {
  const _$RegisterTearOff();

  Register$ call(void Function(AppAction) response) {
    return Register$(
      response,
    );
  }

  RegisterSuccessful successful(AdminUser user) {
    return RegisterSuccessful(
      user,
    );
  }

  RegisterError error(Object error) {
    return RegisterError(
      error,
    );
  }
}

/// @nodoc
const $Register = _$RegisterTearOff();

/// @nodoc
mixin _$Register {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(void Function(AppAction) response) $default, {
    required TResult Function(AdminUser user) successful,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(void Function(AppAction) response)? $default, {
    TResult Function(AdminUser user)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Register$ value) $default, {
    required TResult Function(RegisterSuccessful value) successful,
    required TResult Function(RegisterError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Register$ value)? $default, {
    TResult Function(RegisterSuccessful value)? successful,
    TResult Function(RegisterError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterCopyWith<$Res> {
  factory $RegisterCopyWith(Register value, $Res Function(Register) then) =
      _$RegisterCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterCopyWithImpl<$Res> implements $RegisterCopyWith<$Res> {
  _$RegisterCopyWithImpl(this._value, this._then);

  final Register _value;
  // ignore: unused_field
  final $Res Function(Register) _then;
}

/// @nodoc
abstract class $Register$CopyWith<$Res> {
  factory $Register$CopyWith(Register$ value, $Res Function(Register$) then) =
      _$Register$CopyWithImpl<$Res>;
  $Res call({void Function(AppAction) response});
}

/// @nodoc
class _$Register$CopyWithImpl<$Res> extends _$RegisterCopyWithImpl<$Res>
    implements $Register$CopyWith<$Res> {
  _$Register$CopyWithImpl(Register$ _value, $Res Function(Register$) _then)
      : super(_value, (v) => _then(v as Register$));

  @override
  Register$ get _value => super._value as Register$;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(Register$(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as void Function(AppAction),
    ));
  }
}

/// @nodoc
class _$Register$ implements Register$ {
  const _$Register$(this.response);

  @override
  final void Function(AppAction) response;

  @override
  String toString() {
    return 'Register(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Register$ &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  $Register$CopyWith<Register$> get copyWith =>
      _$Register$CopyWithImpl<Register$>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(void Function(AppAction) response) $default, {
    required TResult Function(AdminUser user) successful,
    required TResult Function(Object error) error,
  }) {
    return $default(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(void Function(AppAction) response)? $default, {
    TResult Function(AdminUser user)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Register$ value) $default, {
    required TResult Function(RegisterSuccessful value) successful,
    required TResult Function(RegisterError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Register$ value)? $default, {
    TResult Function(RegisterSuccessful value)? successful,
    TResult Function(RegisterError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Register$ implements Register {
  const factory Register$(void Function(AppAction) response) = _$Register$;

  void Function(AppAction) get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Register$CopyWith<Register$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterSuccessfulCopyWith<$Res> {
  factory $RegisterSuccessfulCopyWith(
          RegisterSuccessful value, $Res Function(RegisterSuccessful) then) =
      _$RegisterSuccessfulCopyWithImpl<$Res>;
  $Res call({AdminUser user});
}

/// @nodoc
class _$RegisterSuccessfulCopyWithImpl<$Res>
    extends _$RegisterCopyWithImpl<$Res>
    implements $RegisterSuccessfulCopyWith<$Res> {
  _$RegisterSuccessfulCopyWithImpl(
      RegisterSuccessful _value, $Res Function(RegisterSuccessful) _then)
      : super(_value, (v) => _then(v as RegisterSuccessful));

  @override
  RegisterSuccessful get _value => super._value as RegisterSuccessful;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(RegisterSuccessful(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AdminUser,
    ));
  }
}

/// @nodoc
class _$RegisterSuccessful implements RegisterSuccessful {
  const _$RegisterSuccessful(this.user);

  @override
  final AdminUser user;

  @override
  String toString() {
    return 'Register.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $RegisterSuccessfulCopyWith<RegisterSuccessful> get copyWith =>
      _$RegisterSuccessfulCopyWithImpl<RegisterSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(void Function(AppAction) response) $default, {
    required TResult Function(AdminUser user) successful,
    required TResult Function(Object error) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(void Function(AppAction) response)? $default, {
    TResult Function(AdminUser user)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Register$ value) $default, {
    required TResult Function(RegisterSuccessful value) successful,
    required TResult Function(RegisterError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Register$ value)? $default, {
    TResult Function(RegisterSuccessful value)? successful,
    TResult Function(RegisterError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class RegisterSuccessful implements Register {
  const factory RegisterSuccessful(AdminUser user) = _$RegisterSuccessful;

  AdminUser get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterSuccessfulCopyWith<RegisterSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterErrorCopyWith<$Res> {
  factory $RegisterErrorCopyWith(
          RegisterError value, $Res Function(RegisterError) then) =
      _$RegisterErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$RegisterErrorCopyWithImpl<$Res> extends _$RegisterCopyWithImpl<$Res>
    implements $RegisterErrorCopyWith<$Res> {
  _$RegisterErrorCopyWithImpl(
      RegisterError _value, $Res Function(RegisterError) _then)
      : super(_value, (v) => _then(v as RegisterError));

  @override
  RegisterError get _value => super._value as RegisterError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(RegisterError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$RegisterError implements RegisterError {
  const _$RegisterError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'Register.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $RegisterErrorCopyWith<RegisterError> get copyWith =>
      _$RegisterErrorCopyWithImpl<RegisterError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(void Function(AppAction) response) $default, {
    required TResult Function(AdminUser user) successful,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(void Function(AppAction) response)? $default, {
    TResult Function(AdminUser user)? successful,
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
    TResult Function(Register$ value) $default, {
    required TResult Function(RegisterSuccessful value) successful,
    required TResult Function(RegisterError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Register$ value)? $default, {
    TResult Function(RegisterSuccessful value)? successful,
    TResult Function(RegisterError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RegisterError implements Register, ErrorAction {
  const factory RegisterError(Object error) = _$RegisterError;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterErrorCopyWith<RegisterError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UpdateRegistrationInfoTearOff {
  const _$UpdateRegistrationInfoTearOff();

  UpdateRegistrationInfo$ call(
      {String? email,
      String? password,
      String? firstName,
      String? lastName,
      String? companyName,
      String? image,
      String? openHour,
      String? closeHour,
      String? city,
      BuiltList<PaymentMethod>? paymentMethods,
      BuiltList<DeliveryOption>? deliveryOptions,
      String? address,
      double? deliveryFee,
      double? deliveryThreshold,
      double? deliveryFeeThreshold}) {
    return UpdateRegistrationInfo$(
      email: email,
      password: password,
      firstName: firstName,
      lastName: lastName,
      companyName: companyName,
      image: image,
      openHour: openHour,
      closeHour: closeHour,
      city: city,
      paymentMethods: paymentMethods,
      deliveryOptions: deliveryOptions,
      address: address,
      deliveryFee: deliveryFee,
      deliveryThreshold: deliveryThreshold,
      deliveryFeeThreshold: deliveryFeeThreshold,
    );
  }
}

/// @nodoc
const $UpdateRegistrationInfo = _$UpdateRegistrationInfoTearOff();

/// @nodoc
mixin _$UpdateRegistrationInfo {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get companyName => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get openHour => throw _privateConstructorUsedError;
  String? get closeHour => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  BuiltList<PaymentMethod>? get paymentMethods =>
      throw _privateConstructorUsedError;
  BuiltList<DeliveryOption>? get deliveryOptions =>
      throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  double? get deliveryFee => throw _privateConstructorUsedError;
  double? get deliveryThreshold => throw _privateConstructorUsedError;
  double? get deliveryFeeThreshold => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateRegistrationInfoCopyWith<UpdateRegistrationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateRegistrationInfoCopyWith<$Res> {
  factory $UpdateRegistrationInfoCopyWith(UpdateRegistrationInfo value,
          $Res Function(UpdateRegistrationInfo) then) =
      _$UpdateRegistrationInfoCopyWithImpl<$Res>;
  $Res call(
      {String? email,
      String? password,
      String? firstName,
      String? lastName,
      String? companyName,
      String? image,
      String? openHour,
      String? closeHour,
      String? city,
      BuiltList<PaymentMethod>? paymentMethods,
      BuiltList<DeliveryOption>? deliveryOptions,
      String? address,
      double? deliveryFee,
      double? deliveryThreshold,
      double? deliveryFeeThreshold});
}

/// @nodoc
class _$UpdateRegistrationInfoCopyWithImpl<$Res>
    implements $UpdateRegistrationInfoCopyWith<$Res> {
  _$UpdateRegistrationInfoCopyWithImpl(this._value, this._then);

  final UpdateRegistrationInfo _value;
  // ignore: unused_field
  final $Res Function(UpdateRegistrationInfo) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? companyName = freezed,
    Object? image = freezed,
    Object? openHour = freezed,
    Object? closeHour = freezed,
    Object? city = freezed,
    Object? paymentMethods = freezed,
    Object? deliveryOptions = freezed,
    Object? address = freezed,
    Object? deliveryFee = freezed,
    Object? deliveryThreshold = freezed,
    Object? deliveryFeeThreshold = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      openHour: openHour == freezed
          ? _value.openHour
          : openHour // ignore: cast_nullable_to_non_nullable
              as String?,
      closeHour: closeHour == freezed
          ? _value.closeHour
          : closeHour // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethods: paymentMethods == freezed
          ? _value.paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as BuiltList<PaymentMethod>?,
      deliveryOptions: deliveryOptions == freezed
          ? _value.deliveryOptions
          : deliveryOptions // ignore: cast_nullable_to_non_nullable
              as BuiltList<DeliveryOption>?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryFee: deliveryFee == freezed
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryThreshold: deliveryThreshold == freezed
          ? _value.deliveryThreshold
          : deliveryThreshold // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryFeeThreshold: deliveryFeeThreshold == freezed
          ? _value.deliveryFeeThreshold
          : deliveryFeeThreshold // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class $UpdateRegistrationInfo$CopyWith<$Res>
    implements $UpdateRegistrationInfoCopyWith<$Res> {
  factory $UpdateRegistrationInfo$CopyWith(UpdateRegistrationInfo$ value,
          $Res Function(UpdateRegistrationInfo$) then) =
      _$UpdateRegistrationInfo$CopyWithImpl<$Res>;
  @override
  $Res call(
      {String? email,
      String? password,
      String? firstName,
      String? lastName,
      String? companyName,
      String? image,
      String? openHour,
      String? closeHour,
      String? city,
      BuiltList<PaymentMethod>? paymentMethods,
      BuiltList<DeliveryOption>? deliveryOptions,
      String? address,
      double? deliveryFee,
      double? deliveryThreshold,
      double? deliveryFeeThreshold});
}

/// @nodoc
class _$UpdateRegistrationInfo$CopyWithImpl<$Res>
    extends _$UpdateRegistrationInfoCopyWithImpl<$Res>
    implements $UpdateRegistrationInfo$CopyWith<$Res> {
  _$UpdateRegistrationInfo$CopyWithImpl(UpdateRegistrationInfo$ _value,
      $Res Function(UpdateRegistrationInfo$) _then)
      : super(_value, (v) => _then(v as UpdateRegistrationInfo$));

  @override
  UpdateRegistrationInfo$ get _value => super._value as UpdateRegistrationInfo$;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? companyName = freezed,
    Object? image = freezed,
    Object? openHour = freezed,
    Object? closeHour = freezed,
    Object? city = freezed,
    Object? paymentMethods = freezed,
    Object? deliveryOptions = freezed,
    Object? address = freezed,
    Object? deliveryFee = freezed,
    Object? deliveryThreshold = freezed,
    Object? deliveryFeeThreshold = freezed,
  }) {
    return _then(UpdateRegistrationInfo$(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      openHour: openHour == freezed
          ? _value.openHour
          : openHour // ignore: cast_nullable_to_non_nullable
              as String?,
      closeHour: closeHour == freezed
          ? _value.closeHour
          : closeHour // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethods: paymentMethods == freezed
          ? _value.paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as BuiltList<PaymentMethod>?,
      deliveryOptions: deliveryOptions == freezed
          ? _value.deliveryOptions
          : deliveryOptions // ignore: cast_nullable_to_non_nullable
              as BuiltList<DeliveryOption>?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryFee: deliveryFee == freezed
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryThreshold: deliveryThreshold == freezed
          ? _value.deliveryThreshold
          : deliveryThreshold // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryFeeThreshold: deliveryFeeThreshold == freezed
          ? _value.deliveryFeeThreshold
          : deliveryFeeThreshold // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
class _$UpdateRegistrationInfo$ implements UpdateRegistrationInfo$ {
  const _$UpdateRegistrationInfo$(
      {this.email,
      this.password,
      this.firstName,
      this.lastName,
      this.companyName,
      this.image,
      this.openHour,
      this.closeHour,
      this.city,
      this.paymentMethods,
      this.deliveryOptions,
      this.address,
      this.deliveryFee,
      this.deliveryThreshold,
      this.deliveryFeeThreshold});

  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? companyName;
  @override
  final String? image;
  @override
  final String? openHour;
  @override
  final String? closeHour;
  @override
  final String? city;
  @override
  final BuiltList<PaymentMethod>? paymentMethods;
  @override
  final BuiltList<DeliveryOption>? deliveryOptions;
  @override
  final String? address;
  @override
  final double? deliveryFee;
  @override
  final double? deliveryThreshold;
  @override
  final double? deliveryFeeThreshold;

  @override
  String toString() {
    return 'UpdateRegistrationInfo(email: $email, password: $password, firstName: $firstName, lastName: $lastName, companyName: $companyName, image: $image, openHour: $openHour, closeHour: $closeHour, city: $city, paymentMethods: $paymentMethods, deliveryOptions: $deliveryOptions, address: $address, deliveryFee: $deliveryFee, deliveryThreshold: $deliveryThreshold, deliveryFeeThreshold: $deliveryFeeThreshold)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateRegistrationInfo$ &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.companyName, companyName) ||
                const DeepCollectionEquality()
                    .equals(other.companyName, companyName)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.openHour, openHour) ||
                const DeepCollectionEquality()
                    .equals(other.openHour, openHour)) &&
            (identical(other.closeHour, closeHour) ||
                const DeepCollectionEquality()
                    .equals(other.closeHour, closeHour)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.paymentMethods, paymentMethods) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethods, paymentMethods)) &&
            (identical(other.deliveryOptions, deliveryOptions) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryOptions, deliveryOptions)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.deliveryFee, deliveryFee) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryFee, deliveryFee)) &&
            (identical(other.deliveryThreshold, deliveryThreshold) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryThreshold, deliveryThreshold)) &&
            (identical(other.deliveryFeeThreshold, deliveryFeeThreshold) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryFeeThreshold, deliveryFeeThreshold)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(companyName) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(openHour) ^
      const DeepCollectionEquality().hash(closeHour) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(paymentMethods) ^
      const DeepCollectionEquality().hash(deliveryOptions) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(deliveryFee) ^
      const DeepCollectionEquality().hash(deliveryThreshold) ^
      const DeepCollectionEquality().hash(deliveryFeeThreshold);

  @JsonKey(ignore: true)
  @override
  $UpdateRegistrationInfo$CopyWith<UpdateRegistrationInfo$> get copyWith =>
      _$UpdateRegistrationInfo$CopyWithImpl<UpdateRegistrationInfo$>(
          this, _$identity);
}

abstract class UpdateRegistrationInfo$ implements UpdateRegistrationInfo {
  const factory UpdateRegistrationInfo$(
      {String? email,
      String? password,
      String? firstName,
      String? lastName,
      String? companyName,
      String? image,
      String? openHour,
      String? closeHour,
      String? city,
      BuiltList<PaymentMethod>? paymentMethods,
      BuiltList<DeliveryOption>? deliveryOptions,
      String? address,
      double? deliveryFee,
      double? deliveryThreshold,
      double? deliveryFeeThreshold}) = _$UpdateRegistrationInfo$;

  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get password => throw _privateConstructorUsedError;
  @override
  String? get firstName => throw _privateConstructorUsedError;
  @override
  String? get lastName => throw _privateConstructorUsedError;
  @override
  String? get companyName => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  String? get openHour => throw _privateConstructorUsedError;
  @override
  String? get closeHour => throw _privateConstructorUsedError;
  @override
  String? get city => throw _privateConstructorUsedError;
  @override
  BuiltList<PaymentMethod>? get paymentMethods =>
      throw _privateConstructorUsedError;
  @override
  BuiltList<DeliveryOption>? get deliveryOptions =>
      throw _privateConstructorUsedError;
  @override
  String? get address => throw _privateConstructorUsedError;
  @override
  double? get deliveryFee => throw _privateConstructorUsedError;
  @override
  double? get deliveryThreshold => throw _privateConstructorUsedError;
  @override
  double? get deliveryFeeThreshold => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $UpdateRegistrationInfo$CopyWith<UpdateRegistrationInfo$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$InitializeAppTearOff {
  const _$InitializeAppTearOff();

  InitializeApp$ call() {
    return const InitializeApp$();
  }

  InitializeAppSuccessful successful(AdminUser user) {
    return InitializeAppSuccessful(
      user,
    );
  }

  InitializeAppError error(Object error) {
    return InitializeAppError(
      error,
    );
  }
}

/// @nodoc
const $InitializeApp = _$InitializeAppTearOff();

/// @nodoc
mixin _$InitializeApp {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AdminUser user) successful,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AdminUser user)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeApp$ value) $default, {
    required TResult Function(InitializeAppSuccessful value) successful,
    required TResult Function(InitializeAppError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeApp$ value)? $default, {
    TResult Function(InitializeAppSuccessful value)? successful,
    TResult Function(InitializeAppError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializeAppCopyWith<$Res> {
  factory $InitializeAppCopyWith(
          InitializeApp value, $Res Function(InitializeApp) then) =
      _$InitializeAppCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppCopyWith<$Res> {
  _$InitializeAppCopyWithImpl(this._value, this._then);

  final InitializeApp _value;
  // ignore: unused_field
  final $Res Function(InitializeApp) _then;
}

/// @nodoc
abstract class $InitializeApp$CopyWith<$Res> {
  factory $InitializeApp$CopyWith(
          InitializeApp$ value, $Res Function(InitializeApp$) then) =
      _$InitializeApp$CopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeApp$CopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeApp$CopyWith<$Res> {
  _$InitializeApp$CopyWithImpl(
      InitializeApp$ _value, $Res Function(InitializeApp$) _then)
      : super(_value, (v) => _then(v as InitializeApp$));

  @override
  InitializeApp$ get _value => super._value as InitializeApp$;
}

/// @nodoc
class _$InitializeApp$ implements InitializeApp$ {
  const _$InitializeApp$();

  @override
  String toString() {
    return 'InitializeApp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitializeApp$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AdminUser user) successful,
    required TResult Function(Object error) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AdminUser user)? successful,
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
    TResult Function(InitializeApp$ value) $default, {
    required TResult Function(InitializeAppSuccessful value) successful,
    required TResult Function(InitializeAppError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeApp$ value)? $default, {
    TResult Function(InitializeAppSuccessful value)? successful,
    TResult Function(InitializeAppError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class InitializeApp$ implements InitializeApp {
  const factory InitializeApp$() = _$InitializeApp$;
}

/// @nodoc
abstract class $InitializeAppSuccessfulCopyWith<$Res> {
  factory $InitializeAppSuccessfulCopyWith(InitializeAppSuccessful value,
          $Res Function(InitializeAppSuccessful) then) =
      _$InitializeAppSuccessfulCopyWithImpl<$Res>;
  $Res call({AdminUser user});
}

/// @nodoc
class _$InitializeAppSuccessfulCopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppSuccessfulCopyWith<$Res> {
  _$InitializeAppSuccessfulCopyWithImpl(InitializeAppSuccessful _value,
      $Res Function(InitializeAppSuccessful) _then)
      : super(_value, (v) => _then(v as InitializeAppSuccessful));

  @override
  InitializeAppSuccessful get _value => super._value as InitializeAppSuccessful;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(InitializeAppSuccessful(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AdminUser,
    ));
  }
}

/// @nodoc
class _$InitializeAppSuccessful implements InitializeAppSuccessful {
  const _$InitializeAppSuccessful(this.user);

  @override
  final AdminUser user;

  @override
  String toString() {
    return 'InitializeApp.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitializeAppSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $InitializeAppSuccessfulCopyWith<InitializeAppSuccessful> get copyWith =>
      _$InitializeAppSuccessfulCopyWithImpl<InitializeAppSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AdminUser user) successful,
    required TResult Function(Object error) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AdminUser user)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeApp$ value) $default, {
    required TResult Function(InitializeAppSuccessful value) successful,
    required TResult Function(InitializeAppError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeApp$ value)? $default, {
    TResult Function(InitializeAppSuccessful value)? successful,
    TResult Function(InitializeAppError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class InitializeAppSuccessful implements InitializeApp {
  const factory InitializeAppSuccessful(AdminUser user) =
      _$InitializeAppSuccessful;

  AdminUser get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitializeAppSuccessfulCopyWith<InitializeAppSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializeAppErrorCopyWith<$Res> {
  factory $InitializeAppErrorCopyWith(
          InitializeAppError value, $Res Function(InitializeAppError) then) =
      _$InitializeAppErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$InitializeAppErrorCopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppErrorCopyWith<$Res> {
  _$InitializeAppErrorCopyWithImpl(
      InitializeAppError _value, $Res Function(InitializeAppError) _then)
      : super(_value, (v) => _then(v as InitializeAppError));

  @override
  InitializeAppError get _value => super._value as InitializeAppError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(InitializeAppError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$InitializeAppError implements InitializeAppError {
  const _$InitializeAppError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'InitializeApp.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitializeAppError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $InitializeAppErrorCopyWith<InitializeAppError> get copyWith =>
      _$InitializeAppErrorCopyWithImpl<InitializeAppError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AdminUser user) successful,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AdminUser user)? successful,
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
    TResult Function(InitializeApp$ value) $default, {
    required TResult Function(InitializeAppSuccessful value) successful,
    required TResult Function(InitializeAppError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeApp$ value)? $default, {
    TResult Function(InitializeAppSuccessful value)? successful,
    TResult Function(InitializeAppError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class InitializeAppError implements InitializeApp, ErrorAction {
  const factory InitializeAppError(Object error) = _$InitializeAppError;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitializeAppErrorCopyWith<InitializeAppError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CreateEmployeeAccountTearOff {
  const _$CreateEmployeeAccountTearOff();

  CreateEmployeeAccount$ call(
      {required String email,
      required String password,
      required List<Role> roles}) {
    return CreateEmployeeAccount$(
      email: email,
      password: password,
      roles: roles,
    );
  }

  CreateEmployeeAccountSuccessful successful(String employeeId) {
    return CreateEmployeeAccountSuccessful(
      employeeId,
    );
  }

  CreateEmployeeAccountError error(Object error) {
    return CreateEmployeeAccountError(
      error,
    );
  }
}

/// @nodoc
const $CreateEmployeeAccount = _$CreateEmployeeAccountTearOff();

/// @nodoc
mixin _$CreateEmployeeAccount {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, List<Role> roles)
        $default, {
    required TResult Function(String employeeId) successful,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, List<Role> roles)?
        $default, {
    TResult Function(String employeeId)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateEmployeeAccount$ value) $default, {
    required TResult Function(CreateEmployeeAccountSuccessful value) successful,
    required TResult Function(CreateEmployeeAccountError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateEmployeeAccount$ value)? $default, {
    TResult Function(CreateEmployeeAccountSuccessful value)? successful,
    TResult Function(CreateEmployeeAccountError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateEmployeeAccountCopyWith<$Res> {
  factory $CreateEmployeeAccountCopyWith(CreateEmployeeAccount value,
          $Res Function(CreateEmployeeAccount) then) =
      _$CreateEmployeeAccountCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateEmployeeAccountCopyWithImpl<$Res>
    implements $CreateEmployeeAccountCopyWith<$Res> {
  _$CreateEmployeeAccountCopyWithImpl(this._value, this._then);

  final CreateEmployeeAccount _value;
  // ignore: unused_field
  final $Res Function(CreateEmployeeAccount) _then;
}

/// @nodoc
abstract class $CreateEmployeeAccount$CopyWith<$Res> {
  factory $CreateEmployeeAccount$CopyWith(CreateEmployeeAccount$ value,
          $Res Function(CreateEmployeeAccount$) then) =
      _$CreateEmployeeAccount$CopyWithImpl<$Res>;
  $Res call({String email, String password, List<Role> roles});
}

/// @nodoc
class _$CreateEmployeeAccount$CopyWithImpl<$Res>
    extends _$CreateEmployeeAccountCopyWithImpl<$Res>
    implements $CreateEmployeeAccount$CopyWith<$Res> {
  _$CreateEmployeeAccount$CopyWithImpl(CreateEmployeeAccount$ _value,
      $Res Function(CreateEmployeeAccount$) _then)
      : super(_value, (v) => _then(v as CreateEmployeeAccount$));

  @override
  CreateEmployeeAccount$ get _value => super._value as CreateEmployeeAccount$;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? roles = freezed,
  }) {
    return _then(CreateEmployeeAccount$(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      roles: roles == freezed
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<Role>,
    ));
  }
}

/// @nodoc
class _$CreateEmployeeAccount$ implements CreateEmployeeAccount$ {
  const _$CreateEmployeeAccount$(
      {required this.email, required this.password, required this.roles});

  @override
  final String email;
  @override
  final String password;
  @override
  final List<Role> roles;

  @override
  String toString() {
    return 'CreateEmployeeAccount(email: $email, password: $password, roles: $roles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateEmployeeAccount$ &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(roles);

  @JsonKey(ignore: true)
  @override
  $CreateEmployeeAccount$CopyWith<CreateEmployeeAccount$> get copyWith =>
      _$CreateEmployeeAccount$CopyWithImpl<CreateEmployeeAccount$>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, List<Role> roles)
        $default, {
    required TResult Function(String employeeId) successful,
    required TResult Function(Object error) error,
  }) {
    return $default(email, password, roles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, List<Role> roles)?
        $default, {
    TResult Function(String employeeId)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email, password, roles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateEmployeeAccount$ value) $default, {
    required TResult Function(CreateEmployeeAccountSuccessful value) successful,
    required TResult Function(CreateEmployeeAccountError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateEmployeeAccount$ value)? $default, {
    TResult Function(CreateEmployeeAccountSuccessful value)? successful,
    TResult Function(CreateEmployeeAccountError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CreateEmployeeAccount$ implements CreateEmployeeAccount {
  const factory CreateEmployeeAccount$(
      {required String email,
      required String password,
      required List<Role> roles}) = _$CreateEmployeeAccount$;

  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  List<Role> get roles => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateEmployeeAccount$CopyWith<CreateEmployeeAccount$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateEmployeeAccountSuccessfulCopyWith<$Res> {
  factory $CreateEmployeeAccountSuccessfulCopyWith(
          CreateEmployeeAccountSuccessful value,
          $Res Function(CreateEmployeeAccountSuccessful) then) =
      _$CreateEmployeeAccountSuccessfulCopyWithImpl<$Res>;
  $Res call({String employeeId});
}

/// @nodoc
class _$CreateEmployeeAccountSuccessfulCopyWithImpl<$Res>
    extends _$CreateEmployeeAccountCopyWithImpl<$Res>
    implements $CreateEmployeeAccountSuccessfulCopyWith<$Res> {
  _$CreateEmployeeAccountSuccessfulCopyWithImpl(
      CreateEmployeeAccountSuccessful _value,
      $Res Function(CreateEmployeeAccountSuccessful) _then)
      : super(_value, (v) => _then(v as CreateEmployeeAccountSuccessful));

  @override
  CreateEmployeeAccountSuccessful get _value =>
      super._value as CreateEmployeeAccountSuccessful;

  @override
  $Res call({
    Object? employeeId = freezed,
  }) {
    return _then(CreateEmployeeAccountSuccessful(
      employeeId == freezed
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$CreateEmployeeAccountSuccessful
    implements CreateEmployeeAccountSuccessful {
  const _$CreateEmployeeAccountSuccessful(this.employeeId);

  @override
  final String employeeId;

  @override
  String toString() {
    return 'CreateEmployeeAccount.successful(employeeId: $employeeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateEmployeeAccountSuccessful &&
            (identical(other.employeeId, employeeId) ||
                const DeepCollectionEquality()
                    .equals(other.employeeId, employeeId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(employeeId);

  @JsonKey(ignore: true)
  @override
  $CreateEmployeeAccountSuccessfulCopyWith<CreateEmployeeAccountSuccessful>
      get copyWith => _$CreateEmployeeAccountSuccessfulCopyWithImpl<
          CreateEmployeeAccountSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, List<Role> roles)
        $default, {
    required TResult Function(String employeeId) successful,
    required TResult Function(Object error) error,
  }) {
    return successful(employeeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, List<Role> roles)?
        $default, {
    TResult Function(String employeeId)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(employeeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateEmployeeAccount$ value) $default, {
    required TResult Function(CreateEmployeeAccountSuccessful value) successful,
    required TResult Function(CreateEmployeeAccountError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateEmployeeAccount$ value)? $default, {
    TResult Function(CreateEmployeeAccountSuccessful value)? successful,
    TResult Function(CreateEmployeeAccountError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreateEmployeeAccountSuccessful
    implements CreateEmployeeAccount {
  const factory CreateEmployeeAccountSuccessful(String employeeId) =
      _$CreateEmployeeAccountSuccessful;

  String get employeeId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateEmployeeAccountSuccessfulCopyWith<CreateEmployeeAccountSuccessful>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateEmployeeAccountErrorCopyWith<$Res> {
  factory $CreateEmployeeAccountErrorCopyWith(CreateEmployeeAccountError value,
          $Res Function(CreateEmployeeAccountError) then) =
      _$CreateEmployeeAccountErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$CreateEmployeeAccountErrorCopyWithImpl<$Res>
    extends _$CreateEmployeeAccountCopyWithImpl<$Res>
    implements $CreateEmployeeAccountErrorCopyWith<$Res> {
  _$CreateEmployeeAccountErrorCopyWithImpl(CreateEmployeeAccountError _value,
      $Res Function(CreateEmployeeAccountError) _then)
      : super(_value, (v) => _then(v as CreateEmployeeAccountError));

  @override
  CreateEmployeeAccountError get _value =>
      super._value as CreateEmployeeAccountError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CreateEmployeeAccountError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$CreateEmployeeAccountError implements CreateEmployeeAccountError {
  const _$CreateEmployeeAccountError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'CreateEmployeeAccount.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateEmployeeAccountError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CreateEmployeeAccountErrorCopyWith<CreateEmployeeAccountError>
      get copyWith =>
          _$CreateEmployeeAccountErrorCopyWithImpl<CreateEmployeeAccountError>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, List<Role> roles)
        $default, {
    required TResult Function(String employeeId) successful,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, List<Role> roles)?
        $default, {
    TResult Function(String employeeId)? successful,
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
    TResult Function(CreateEmployeeAccount$ value) $default, {
    required TResult Function(CreateEmployeeAccountSuccessful value) successful,
    required TResult Function(CreateEmployeeAccountError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateEmployeeAccount$ value)? $default, {
    TResult Function(CreateEmployeeAccountSuccessful value)? successful,
    TResult Function(CreateEmployeeAccountError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateEmployeeAccountError
    implements CreateEmployeeAccount, ErrorAction {
  const factory CreateEmployeeAccountError(Object error) =
      _$CreateEmployeeAccountError;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateEmployeeAccountErrorCopyWith<CreateEmployeeAccountError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddSavedDishesTearOff {
  const _$AddSavedDishesTearOff();

  AddSavedDishes$ call(
      {required String name,
      required String? description,
      required String price,
      required String quantity,
      required String? image}) {
    return AddSavedDishes$(
      name: name,
      description: description,
      price: price,
      quantity: quantity,
      image: image,
    );
  }

  AddSavedDishesSuccessful successful(Dish dish) {
    return AddSavedDishesSuccessful(
      dish,
    );
  }

  AddSavedDishesError error(Object error) {
    return AddSavedDishesError(
      error,
    );
  }
}

/// @nodoc
const $AddSavedDishes = _$AddSavedDishesTearOff();

/// @nodoc
mixin _$AddSavedDishes {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String? description, String price,
            String quantity, String? image)
        $default, {
    required TResult Function(Dish dish) successful,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String? description, String price,
            String quantity, String? image)?
        $default, {
    TResult Function(Dish dish)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AddSavedDishes$ value) $default, {
    required TResult Function(AddSavedDishesSuccessful value) successful,
    required TResult Function(AddSavedDishesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddSavedDishes$ value)? $default, {
    TResult Function(AddSavedDishesSuccessful value)? successful,
    TResult Function(AddSavedDishesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddSavedDishesCopyWith<$Res> {
  factory $AddSavedDishesCopyWith(
          AddSavedDishes value, $Res Function(AddSavedDishes) then) =
      _$AddSavedDishesCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddSavedDishesCopyWithImpl<$Res>
    implements $AddSavedDishesCopyWith<$Res> {
  _$AddSavedDishesCopyWithImpl(this._value, this._then);

  final AddSavedDishes _value;
  // ignore: unused_field
  final $Res Function(AddSavedDishes) _then;
}

/// @nodoc
abstract class $AddSavedDishes$CopyWith<$Res> {
  factory $AddSavedDishes$CopyWith(
          AddSavedDishes$ value, $Res Function(AddSavedDishes$) then) =
      _$AddSavedDishes$CopyWithImpl<$Res>;
  $Res call(
      {String name,
      String? description,
      String price,
      String quantity,
      String? image});
}

/// @nodoc
class _$AddSavedDishes$CopyWithImpl<$Res>
    extends _$AddSavedDishesCopyWithImpl<$Res>
    implements $AddSavedDishes$CopyWith<$Res> {
  _$AddSavedDishes$CopyWithImpl(
      AddSavedDishes$ _value, $Res Function(AddSavedDishes$) _then)
      : super(_value, (v) => _then(v as AddSavedDishes$));

  @override
  AddSavedDishes$ get _value => super._value as AddSavedDishes$;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? image = freezed,
  }) {
    return _then(AddSavedDishes$(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$AddSavedDishes$ implements AddSavedDishes$ {
  const _$AddSavedDishes$(
      {required this.name,
      required this.description,
      required this.price,
      required this.quantity,
      required this.image});

  @override
  final String name;
  @override
  final String? description;
  @override
  final String price;
  @override
  final String quantity;
  @override
  final String? image;

  @override
  String toString() {
    return 'AddSavedDishes(name: $name, description: $description, price: $price, quantity: $quantity, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddSavedDishes$ &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  $AddSavedDishes$CopyWith<AddSavedDishes$> get copyWith =>
      _$AddSavedDishes$CopyWithImpl<AddSavedDishes$>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String? description, String price,
            String quantity, String? image)
        $default, {
    required TResult Function(Dish dish) successful,
    required TResult Function(Object error) error,
  }) {
    return $default(name, description, price, quantity, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String? description, String price,
            String quantity, String? image)?
        $default, {
    TResult Function(Dish dish)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(name, description, price, quantity, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AddSavedDishes$ value) $default, {
    required TResult Function(AddSavedDishesSuccessful value) successful,
    required TResult Function(AddSavedDishesError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddSavedDishes$ value)? $default, {
    TResult Function(AddSavedDishesSuccessful value)? successful,
    TResult Function(AddSavedDishesError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class AddSavedDishes$ implements AddSavedDishes {
  const factory AddSavedDishes$(
      {required String name,
      required String? description,
      required String price,
      required String quantity,
      required String? image}) = _$AddSavedDishes$;

  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get quantity => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddSavedDishes$CopyWith<AddSavedDishes$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddSavedDishesSuccessfulCopyWith<$Res> {
  factory $AddSavedDishesSuccessfulCopyWith(AddSavedDishesSuccessful value,
          $Res Function(AddSavedDishesSuccessful) then) =
      _$AddSavedDishesSuccessfulCopyWithImpl<$Res>;
  $Res call({Dish dish});
}

/// @nodoc
class _$AddSavedDishesSuccessfulCopyWithImpl<$Res>
    extends _$AddSavedDishesCopyWithImpl<$Res>
    implements $AddSavedDishesSuccessfulCopyWith<$Res> {
  _$AddSavedDishesSuccessfulCopyWithImpl(AddSavedDishesSuccessful _value,
      $Res Function(AddSavedDishesSuccessful) _then)
      : super(_value, (v) => _then(v as AddSavedDishesSuccessful));

  @override
  AddSavedDishesSuccessful get _value =>
      super._value as AddSavedDishesSuccessful;

  @override
  $Res call({
    Object? dish = freezed,
  }) {
    return _then(AddSavedDishesSuccessful(
      dish == freezed
          ? _value.dish
          : dish // ignore: cast_nullable_to_non_nullable
              as Dish,
    ));
  }
}

/// @nodoc
class _$AddSavedDishesSuccessful implements AddSavedDishesSuccessful {
  const _$AddSavedDishesSuccessful(this.dish);

  @override
  final Dish dish;

  @override
  String toString() {
    return 'AddSavedDishes.successful(dish: $dish)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddSavedDishesSuccessful &&
            (identical(other.dish, dish) ||
                const DeepCollectionEquality().equals(other.dish, dish)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dish);

  @JsonKey(ignore: true)
  @override
  $AddSavedDishesSuccessfulCopyWith<AddSavedDishesSuccessful> get copyWith =>
      _$AddSavedDishesSuccessfulCopyWithImpl<AddSavedDishesSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String? description, String price,
            String quantity, String? image)
        $default, {
    required TResult Function(Dish dish) successful,
    required TResult Function(Object error) error,
  }) {
    return successful(dish);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String? description, String price,
            String quantity, String? image)?
        $default, {
    TResult Function(Dish dish)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(dish);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AddSavedDishes$ value) $default, {
    required TResult Function(AddSavedDishesSuccessful value) successful,
    required TResult Function(AddSavedDishesError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddSavedDishes$ value)? $default, {
    TResult Function(AddSavedDishesSuccessful value)? successful,
    TResult Function(AddSavedDishesError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class AddSavedDishesSuccessful implements AddSavedDishes {
  const factory AddSavedDishesSuccessful(Dish dish) =
      _$AddSavedDishesSuccessful;

  Dish get dish => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddSavedDishesSuccessfulCopyWith<AddSavedDishesSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddSavedDishesErrorCopyWith<$Res> {
  factory $AddSavedDishesErrorCopyWith(
          AddSavedDishesError value, $Res Function(AddSavedDishesError) then) =
      _$AddSavedDishesErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$AddSavedDishesErrorCopyWithImpl<$Res>
    extends _$AddSavedDishesCopyWithImpl<$Res>
    implements $AddSavedDishesErrorCopyWith<$Res> {
  _$AddSavedDishesErrorCopyWithImpl(
      AddSavedDishesError _value, $Res Function(AddSavedDishesError) _then)
      : super(_value, (v) => _then(v as AddSavedDishesError));

  @override
  AddSavedDishesError get _value => super._value as AddSavedDishesError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(AddSavedDishesError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$AddSavedDishesError implements AddSavedDishesError {
  const _$AddSavedDishesError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'AddSavedDishes.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddSavedDishesError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $AddSavedDishesErrorCopyWith<AddSavedDishesError> get copyWith =>
      _$AddSavedDishesErrorCopyWithImpl<AddSavedDishesError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String? description, String price,
            String quantity, String? image)
        $default, {
    required TResult Function(Dish dish) successful,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String? description, String price,
            String quantity, String? image)?
        $default, {
    TResult Function(Dish dish)? successful,
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
    TResult Function(AddSavedDishes$ value) $default, {
    required TResult Function(AddSavedDishesSuccessful value) successful,
    required TResult Function(AddSavedDishesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddSavedDishes$ value)? $default, {
    TResult Function(AddSavedDishesSuccessful value)? successful,
    TResult Function(AddSavedDishesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AddSavedDishesError implements AddSavedDishes, ErrorAction {
  const factory AddSavedDishesError(Object error) = _$AddSavedDishesError;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddSavedDishesErrorCopyWith<AddSavedDishesError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RemoveSavedDishesTearOff {
  const _$RemoveSavedDishesTearOff();

  RemoveSavedDishes$ call({required String id}) {
    return RemoveSavedDishes$(
      id: id,
    );
  }

  RemoveSavedDishesSuccessful successful(String id) {
    return RemoveSavedDishesSuccessful(
      id,
    );
  }

  RemoveSavedDishesError error(Object error) {
    return RemoveSavedDishesError(
      error,
    );
  }
}

/// @nodoc
const $RemoveSavedDishes = _$RemoveSavedDishesTearOff();

/// @nodoc
mixin _$RemoveSavedDishes {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id) $default, {
    required TResult Function(String id) successful,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id)? $default, {
    TResult Function(String id)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RemoveSavedDishes$ value) $default, {
    required TResult Function(RemoveSavedDishesSuccessful value) successful,
    required TResult Function(RemoveSavedDishesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RemoveSavedDishes$ value)? $default, {
    TResult Function(RemoveSavedDishesSuccessful value)? successful,
    TResult Function(RemoveSavedDishesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveSavedDishesCopyWith<$Res> {
  factory $RemoveSavedDishesCopyWith(
          RemoveSavedDishes value, $Res Function(RemoveSavedDishes) then) =
      _$RemoveSavedDishesCopyWithImpl<$Res>;
}

/// @nodoc
class _$RemoveSavedDishesCopyWithImpl<$Res>
    implements $RemoveSavedDishesCopyWith<$Res> {
  _$RemoveSavedDishesCopyWithImpl(this._value, this._then);

  final RemoveSavedDishes _value;
  // ignore: unused_field
  final $Res Function(RemoveSavedDishes) _then;
}

/// @nodoc
abstract class $RemoveSavedDishes$CopyWith<$Res> {
  factory $RemoveSavedDishes$CopyWith(
          RemoveSavedDishes$ value, $Res Function(RemoveSavedDishes$) then) =
      _$RemoveSavedDishes$CopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$RemoveSavedDishes$CopyWithImpl<$Res>
    extends _$RemoveSavedDishesCopyWithImpl<$Res>
    implements $RemoveSavedDishes$CopyWith<$Res> {
  _$RemoveSavedDishes$CopyWithImpl(
      RemoveSavedDishes$ _value, $Res Function(RemoveSavedDishes$) _then)
      : super(_value, (v) => _then(v as RemoveSavedDishes$));

  @override
  RemoveSavedDishes$ get _value => super._value as RemoveSavedDishes$;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(RemoveSavedDishes$(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$RemoveSavedDishes$ implements RemoveSavedDishes$ {
  const _$RemoveSavedDishes$({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'RemoveSavedDishes(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveSavedDishes$ &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $RemoveSavedDishes$CopyWith<RemoveSavedDishes$> get copyWith =>
      _$RemoveSavedDishes$CopyWithImpl<RemoveSavedDishes$>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id) $default, {
    required TResult Function(String id) successful,
    required TResult Function(Object error) error,
  }) {
    return $default(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id)? $default, {
    TResult Function(String id)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RemoveSavedDishes$ value) $default, {
    required TResult Function(RemoveSavedDishesSuccessful value) successful,
    required TResult Function(RemoveSavedDishesError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RemoveSavedDishes$ value)? $default, {
    TResult Function(RemoveSavedDishesSuccessful value)? successful,
    TResult Function(RemoveSavedDishesError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class RemoveSavedDishes$ implements RemoveSavedDishes {
  const factory RemoveSavedDishes$({required String id}) = _$RemoveSavedDishes$;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoveSavedDishes$CopyWith<RemoveSavedDishes$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveSavedDishesSuccessfulCopyWith<$Res> {
  factory $RemoveSavedDishesSuccessfulCopyWith(
          RemoveSavedDishesSuccessful value,
          $Res Function(RemoveSavedDishesSuccessful) then) =
      _$RemoveSavedDishesSuccessfulCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$RemoveSavedDishesSuccessfulCopyWithImpl<$Res>
    extends _$RemoveSavedDishesCopyWithImpl<$Res>
    implements $RemoveSavedDishesSuccessfulCopyWith<$Res> {
  _$RemoveSavedDishesSuccessfulCopyWithImpl(RemoveSavedDishesSuccessful _value,
      $Res Function(RemoveSavedDishesSuccessful) _then)
      : super(_value, (v) => _then(v as RemoveSavedDishesSuccessful));

  @override
  RemoveSavedDishesSuccessful get _value =>
      super._value as RemoveSavedDishesSuccessful;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(RemoveSavedDishesSuccessful(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$RemoveSavedDishesSuccessful implements RemoveSavedDishesSuccessful {
  const _$RemoveSavedDishesSuccessful(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'RemoveSavedDishes.successful(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveSavedDishesSuccessful &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $RemoveSavedDishesSuccessfulCopyWith<RemoveSavedDishesSuccessful>
      get copyWith => _$RemoveSavedDishesSuccessfulCopyWithImpl<
          RemoveSavedDishesSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id) $default, {
    required TResult Function(String id) successful,
    required TResult Function(Object error) error,
  }) {
    return successful(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id)? $default, {
    TResult Function(String id)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RemoveSavedDishes$ value) $default, {
    required TResult Function(RemoveSavedDishesSuccessful value) successful,
    required TResult Function(RemoveSavedDishesError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RemoveSavedDishes$ value)? $default, {
    TResult Function(RemoveSavedDishesSuccessful value)? successful,
    TResult Function(RemoveSavedDishesError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class RemoveSavedDishesSuccessful implements RemoveSavedDishes {
  const factory RemoveSavedDishesSuccessful(String id) =
      _$RemoveSavedDishesSuccessful;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoveSavedDishesSuccessfulCopyWith<RemoveSavedDishesSuccessful>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveSavedDishesErrorCopyWith<$Res> {
  factory $RemoveSavedDishesErrorCopyWith(RemoveSavedDishesError value,
          $Res Function(RemoveSavedDishesError) then) =
      _$RemoveSavedDishesErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$RemoveSavedDishesErrorCopyWithImpl<$Res>
    extends _$RemoveSavedDishesCopyWithImpl<$Res>
    implements $RemoveSavedDishesErrorCopyWith<$Res> {
  _$RemoveSavedDishesErrorCopyWithImpl(RemoveSavedDishesError _value,
      $Res Function(RemoveSavedDishesError) _then)
      : super(_value, (v) => _then(v as RemoveSavedDishesError));

  @override
  RemoveSavedDishesError get _value => super._value as RemoveSavedDishesError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(RemoveSavedDishesError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$RemoveSavedDishesError implements RemoveSavedDishesError {
  const _$RemoveSavedDishesError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'RemoveSavedDishes.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveSavedDishesError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $RemoveSavedDishesErrorCopyWith<RemoveSavedDishesError> get copyWith =>
      _$RemoveSavedDishesErrorCopyWithImpl<RemoveSavedDishesError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id) $default, {
    required TResult Function(String id) successful,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id)? $default, {
    TResult Function(String id)? successful,
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
    TResult Function(RemoveSavedDishes$ value) $default, {
    required TResult Function(RemoveSavedDishesSuccessful value) successful,
    required TResult Function(RemoveSavedDishesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RemoveSavedDishes$ value)? $default, {
    TResult Function(RemoveSavedDishesSuccessful value)? successful,
    TResult Function(RemoveSavedDishesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RemoveSavedDishesError
    implements RemoveSavedDishes, ErrorAction {
  const factory RemoveSavedDishesError(Object error) = _$RemoveSavedDishesError;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoveSavedDishesErrorCopyWith<RemoveSavedDishesError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$EditSavedDishesTearOff {
  const _$EditSavedDishesTearOff();

  EditSavedDishes$ call(
      {required String id,
      required String name,
      required String description,
      required String price,
      required String quantity,
      required String? image}) {
    return EditSavedDishes$(
      id: id,
      name: name,
      description: description,
      price: price,
      quantity: quantity,
      image: image,
    );
  }

  EditSavedDishesSuccessful successful(Dish dish) {
    return EditSavedDishesSuccessful(
      dish,
    );
  }

  EditSavedDishesError error(Object error) {
    return EditSavedDishesError(
      error,
    );
  }
}

/// @nodoc
const $EditSavedDishes = _$EditSavedDishesTearOff();

/// @nodoc
mixin _$EditSavedDishes {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String name, String description, String price,
            String quantity, String? image)
        $default, {
    required TResult Function(Dish dish) successful,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String name, String description, String price,
            String quantity, String? image)?
        $default, {
    TResult Function(Dish dish)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(EditSavedDishes$ value) $default, {
    required TResult Function(EditSavedDishesSuccessful value) successful,
    required TResult Function(EditSavedDishesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(EditSavedDishes$ value)? $default, {
    TResult Function(EditSavedDishesSuccessful value)? successful,
    TResult Function(EditSavedDishesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditSavedDishesCopyWith<$Res> {
  factory $EditSavedDishesCopyWith(
          EditSavedDishes value, $Res Function(EditSavedDishes) then) =
      _$EditSavedDishesCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditSavedDishesCopyWithImpl<$Res>
    implements $EditSavedDishesCopyWith<$Res> {
  _$EditSavedDishesCopyWithImpl(this._value, this._then);

  final EditSavedDishes _value;
  // ignore: unused_field
  final $Res Function(EditSavedDishes) _then;
}

/// @nodoc
abstract class $EditSavedDishes$CopyWith<$Res> {
  factory $EditSavedDishes$CopyWith(
          EditSavedDishes$ value, $Res Function(EditSavedDishes$) then) =
      _$EditSavedDishes$CopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String description,
      String price,
      String quantity,
      String? image});
}

/// @nodoc
class _$EditSavedDishes$CopyWithImpl<$Res>
    extends _$EditSavedDishesCopyWithImpl<$Res>
    implements $EditSavedDishes$CopyWith<$Res> {
  _$EditSavedDishes$CopyWithImpl(
      EditSavedDishes$ _value, $Res Function(EditSavedDishes$) _then)
      : super(_value, (v) => _then(v as EditSavedDishes$));

  @override
  EditSavedDishes$ get _value => super._value as EditSavedDishes$;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? image = freezed,
  }) {
    return _then(EditSavedDishes$(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$EditSavedDishes$ implements EditSavedDishes$ {
  const _$EditSavedDishes$(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.quantity,
      required this.image});

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String price;
  @override
  final String quantity;
  @override
  final String? image;

  @override
  String toString() {
    return 'EditSavedDishes(id: $id, name: $name, description: $description, price: $price, quantity: $quantity, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditSavedDishes$ &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  $EditSavedDishes$CopyWith<EditSavedDishes$> get copyWith =>
      _$EditSavedDishes$CopyWithImpl<EditSavedDishes$>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String name, String description, String price,
            String quantity, String? image)
        $default, {
    required TResult Function(Dish dish) successful,
    required TResult Function(Object error) error,
  }) {
    return $default(id, name, description, price, quantity, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String name, String description, String price,
            String quantity, String? image)?
        $default, {
    TResult Function(Dish dish)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, name, description, price, quantity, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(EditSavedDishes$ value) $default, {
    required TResult Function(EditSavedDishesSuccessful value) successful,
    required TResult Function(EditSavedDishesError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(EditSavedDishes$ value)? $default, {
    TResult Function(EditSavedDishesSuccessful value)? successful,
    TResult Function(EditSavedDishesError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class EditSavedDishes$ implements EditSavedDishes {
  const factory EditSavedDishes$(
      {required String id,
      required String name,
      required String description,
      required String price,
      required String quantity,
      required String? image}) = _$EditSavedDishes$;

  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get quantity => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditSavedDishes$CopyWith<EditSavedDishes$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditSavedDishesSuccessfulCopyWith<$Res> {
  factory $EditSavedDishesSuccessfulCopyWith(EditSavedDishesSuccessful value,
          $Res Function(EditSavedDishesSuccessful) then) =
      _$EditSavedDishesSuccessfulCopyWithImpl<$Res>;
  $Res call({Dish dish});
}

/// @nodoc
class _$EditSavedDishesSuccessfulCopyWithImpl<$Res>
    extends _$EditSavedDishesCopyWithImpl<$Res>
    implements $EditSavedDishesSuccessfulCopyWith<$Res> {
  _$EditSavedDishesSuccessfulCopyWithImpl(EditSavedDishesSuccessful _value,
      $Res Function(EditSavedDishesSuccessful) _then)
      : super(_value, (v) => _then(v as EditSavedDishesSuccessful));

  @override
  EditSavedDishesSuccessful get _value =>
      super._value as EditSavedDishesSuccessful;

  @override
  $Res call({
    Object? dish = freezed,
  }) {
    return _then(EditSavedDishesSuccessful(
      dish == freezed
          ? _value.dish
          : dish // ignore: cast_nullable_to_non_nullable
              as Dish,
    ));
  }
}

/// @nodoc
class _$EditSavedDishesSuccessful implements EditSavedDishesSuccessful {
  const _$EditSavedDishesSuccessful(this.dish);

  @override
  final Dish dish;

  @override
  String toString() {
    return 'EditSavedDishes.successful(dish: $dish)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditSavedDishesSuccessful &&
            (identical(other.dish, dish) ||
                const DeepCollectionEquality().equals(other.dish, dish)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dish);

  @JsonKey(ignore: true)
  @override
  $EditSavedDishesSuccessfulCopyWith<EditSavedDishesSuccessful> get copyWith =>
      _$EditSavedDishesSuccessfulCopyWithImpl<EditSavedDishesSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String name, String description, String price,
            String quantity, String? image)
        $default, {
    required TResult Function(Dish dish) successful,
    required TResult Function(Object error) error,
  }) {
    return successful(dish);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String name, String description, String price,
            String quantity, String? image)?
        $default, {
    TResult Function(Dish dish)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(dish);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(EditSavedDishes$ value) $default, {
    required TResult Function(EditSavedDishesSuccessful value) successful,
    required TResult Function(EditSavedDishesError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(EditSavedDishes$ value)? $default, {
    TResult Function(EditSavedDishesSuccessful value)? successful,
    TResult Function(EditSavedDishesError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class EditSavedDishesSuccessful implements EditSavedDishes {
  const factory EditSavedDishesSuccessful(Dish dish) =
      _$EditSavedDishesSuccessful;

  Dish get dish => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditSavedDishesSuccessfulCopyWith<EditSavedDishesSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditSavedDishesErrorCopyWith<$Res> {
  factory $EditSavedDishesErrorCopyWith(EditSavedDishesError value,
          $Res Function(EditSavedDishesError) then) =
      _$EditSavedDishesErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$EditSavedDishesErrorCopyWithImpl<$Res>
    extends _$EditSavedDishesCopyWithImpl<$Res>
    implements $EditSavedDishesErrorCopyWith<$Res> {
  _$EditSavedDishesErrorCopyWithImpl(
      EditSavedDishesError _value, $Res Function(EditSavedDishesError) _then)
      : super(_value, (v) => _then(v as EditSavedDishesError));

  @override
  EditSavedDishesError get _value => super._value as EditSavedDishesError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(EditSavedDishesError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$EditSavedDishesError implements EditSavedDishesError {
  const _$EditSavedDishesError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'EditSavedDishes.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditSavedDishesError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $EditSavedDishesErrorCopyWith<EditSavedDishesError> get copyWith =>
      _$EditSavedDishesErrorCopyWithImpl<EditSavedDishesError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String name, String description, String price,
            String quantity, String? image)
        $default, {
    required TResult Function(Dish dish) successful,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String name, String description, String price,
            String quantity, String? image)?
        $default, {
    TResult Function(Dish dish)? successful,
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
    TResult Function(EditSavedDishes$ value) $default, {
    required TResult Function(EditSavedDishesSuccessful value) successful,
    required TResult Function(EditSavedDishesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(EditSavedDishes$ value)? $default, {
    TResult Function(EditSavedDishesSuccessful value)? successful,
    TResult Function(EditSavedDishesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EditSavedDishesError implements EditSavedDishes, ErrorAction {
  const factory EditSavedDishesError(Object error) = _$EditSavedDishesError;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditSavedDishesErrorCopyWith<EditSavedDishesError> get copyWith =>
      throw _privateConstructorUsedError;
}
