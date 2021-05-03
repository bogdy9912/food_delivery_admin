// GENERATED CODE - DO NOT MODIFY BY HAND

part of auth_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Role _$receptionist = const Role._('receptionist');
const Role _$driver = const Role._('driver');

Role _$valueOf(String name) {
  switch (name) {
    case 'receptionist':
      return _$receptionist;
    case 'driver':
      return _$driver;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Role> _$values = new BuiltSet<Role>(const <Role>[
  _$receptionist,
  _$driver,
]);

Serializer<AdminUser> _$adminUserSerializer = new _$AdminUserSerializer();
Serializer<AuthState> _$authStateSerializer = new _$AuthStateSerializer();
Serializer<RegistrationInfo> _$registrationInfoSerializer =
    new _$RegistrationInfoSerializer();
Serializer<EmployeeUser> _$employeeUserSerializer =
    new _$EmployeeUserSerializer();
Serializer<Role> _$roleSerializer = new _$RoleSerializer();

class _$AdminUserSerializer implements StructuredSerializer<AdminUser> {
  @override
  final Iterable<Type> types = const [AdminUser, _$AdminUser];
  @override
  final String wireName = 'AdminUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, AdminUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'companyName',
      serializers.serialize(object.companyName,
          specifiedType: const FullType(String)),
      'companyId',
      serializers.serialize(object.companyId,
          specifiedType: const FullType(String)),
      'employees',
      serializers.serialize(object.employees,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'savedDishes',
      serializers.serialize(object.savedDishes,
          specifiedType: const FullType(
              BuiltMap, const [const FullType(String), const FullType(Dish)])),
    ];

    return result;
  }

  @override
  AdminUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AdminUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'companyName':
          result.companyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'companyId':
          result.companyId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'employees':
          result.employees.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object>);
          break;
        case 'savedDishes':
          result.savedDishes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(Dish)]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$AuthStateSerializer implements StructuredSerializer<AuthState> {
  @override
  final Iterable<Type> types = const [AuthState, _$AuthState];
  @override
  final String wireName = 'AuthState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AuthState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'info',
      serializers.serialize(object.info,
          specifiedType: const FullType(RegistrationInfo)),
    ];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AdminUser)));
    }
    return result;
  }

  @override
  AuthState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(AdminUser))! as AdminUser);
          break;
        case 'info':
          result.info.replace(serializers.deserialize(value,
                  specifiedType: const FullType(RegistrationInfo))!
              as RegistrationInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$RegistrationInfoSerializer
    implements StructuredSerializer<RegistrationInfo> {
  @override
  final Iterable<Type> types = const [RegistrationInfo, _$RegistrationInfo];
  @override
  final String wireName = 'RegistrationInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers, RegistrationInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'paymentMethods',
      serializers.serialize(object.paymentMethods,
          specifiedType:
              const FullType(BuiltList, const [const FullType(PaymentMethod)])),
      'deliveryOptions',
      serializers.serialize(object.deliveryOptions,
          specifiedType: const FullType(
              BuiltList, const [const FullType(DeliveryOption)])),
    ];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.companyName;
    if (value != null) {
      result
        ..add('companyName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.openHour;
    if (value != null) {
      result
        ..add('openHour')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.closeHour;
    if (value != null) {
      result
        ..add('closeHour')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.deliveryFee;
    if (value != null) {
      result
        ..add('deliveryFee')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.deliveryThreshold;
    if (value != null) {
      result
        ..add('deliveryThreshold')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.deliveryFeeThreshold;
    if (value != null) {
      result
        ..add('deliveryFeeThreshold')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  RegistrationInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegistrationInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'companyName':
          result.companyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'openHour':
          result.openHour = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'closeHour':
          result.closeHour = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'paymentMethods':
          result.paymentMethods.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PaymentMethod)]))!
              as BuiltList<Object>);
          break;
        case 'deliveryOptions':
          result.deliveryOptions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(DeliveryOption)]))!
              as BuiltList<Object>);
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'deliveryFee':
          result.deliveryFee = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'deliveryThreshold':
          result.deliveryThreshold = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'deliveryFeeThreshold':
          result.deliveryFeeThreshold = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$EmployeeUserSerializer implements StructuredSerializer<EmployeeUser> {
  @override
  final Iterable<Type> types = const [EmployeeUser, _$EmployeeUser];
  @override
  final String wireName = 'EmployeeUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, EmployeeUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'adminId',
      serializers.serialize(object.adminId,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'roles',
      serializers.serialize(object.roles,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Role)])),
    ];

    return result;
  }

  @override
  EmployeeUser deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EmployeeUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'adminId':
          result.adminId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'roles':
          result.roles.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Role)]))!
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$RoleSerializer implements PrimitiveSerializer<Role> {
  @override
  final Iterable<Type> types = const <Type>[Role];
  @override
  final String wireName = 'Role';

  @override
  Object serialize(Serializers serializers, Role object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  Role deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Role.valueOf(serialized as String);
}

class _$AdminUser extends AdminUser {
  @override
  final String uid;
  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String companyName;
  @override
  final String companyId;
  @override
  final BuiltList<String> employees;
  @override
  final BuiltMap<String, Dish> savedDishes;

  factory _$AdminUser([void Function(AdminUserBuilder)? updates]) =>
      (new AdminUserBuilder()..update(updates)).build();

  _$AdminUser._(
      {required this.uid,
      required this.email,
      required this.firstName,
      required this.lastName,
      required this.companyName,
      required this.companyId,
      required this.employees,
      required this.savedDishes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(uid, 'AdminUser', 'uid');
    BuiltValueNullFieldError.checkNotNull(email, 'AdminUser', 'email');
    BuiltValueNullFieldError.checkNotNull(firstName, 'AdminUser', 'firstName');
    BuiltValueNullFieldError.checkNotNull(lastName, 'AdminUser', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        companyName, 'AdminUser', 'companyName');
    BuiltValueNullFieldError.checkNotNull(companyId, 'AdminUser', 'companyId');
    BuiltValueNullFieldError.checkNotNull(employees, 'AdminUser', 'employees');
    BuiltValueNullFieldError.checkNotNull(
        savedDishes, 'AdminUser', 'savedDishes');
  }

  @override
  AdminUser rebuild(void Function(AdminUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminUserBuilder toBuilder() => new AdminUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminUser &&
        uid == other.uid &&
        email == other.email &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        companyName == other.companyName &&
        companyId == other.companyId &&
        employees == other.employees &&
        savedDishes == other.savedDishes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, uid.hashCode), email.hashCode),
                            firstName.hashCode),
                        lastName.hashCode),
                    companyName.hashCode),
                companyId.hashCode),
            employees.hashCode),
        savedDishes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AdminUser')
          ..add('uid', uid)
          ..add('email', email)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('companyName', companyName)
          ..add('companyId', companyId)
          ..add('employees', employees)
          ..add('savedDishes', savedDishes))
        .toString();
  }
}

class AdminUserBuilder implements Builder<AdminUser, AdminUserBuilder> {
  _$AdminUser? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _companyName;
  String? get companyName => _$this._companyName;
  set companyName(String? companyName) => _$this._companyName = companyName;

  String? _companyId;
  String? get companyId => _$this._companyId;
  set companyId(String? companyId) => _$this._companyId = companyId;

  ListBuilder<String>? _employees;
  ListBuilder<String> get employees =>
      _$this._employees ??= new ListBuilder<String>();
  set employees(ListBuilder<String>? employees) =>
      _$this._employees = employees;

  MapBuilder<String, Dish>? _savedDishes;
  MapBuilder<String, Dish> get savedDishes =>
      _$this._savedDishes ??= new MapBuilder<String, Dish>();
  set savedDishes(MapBuilder<String, Dish>? savedDishes) =>
      _$this._savedDishes = savedDishes;

  AdminUserBuilder();

  AdminUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _email = $v.email;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _companyName = $v.companyName;
      _companyId = $v.companyId;
      _employees = $v.employees.toBuilder();
      _savedDishes = $v.savedDishes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdminUser;
  }

  @override
  void update(void Function(AdminUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AdminUser build() {
    _$AdminUser _$result;
    try {
      _$result = _$v ??
          new _$AdminUser._(
              uid: BuiltValueNullFieldError.checkNotNull(
                  uid, 'AdminUser', 'uid'),
              email: BuiltValueNullFieldError.checkNotNull(
                  email, 'AdminUser', 'email'),
              firstName: BuiltValueNullFieldError.checkNotNull(
                  firstName, 'AdminUser', 'firstName'),
              lastName: BuiltValueNullFieldError.checkNotNull(
                  lastName, 'AdminUser', 'lastName'),
              companyName: BuiltValueNullFieldError.checkNotNull(
                  companyName, 'AdminUser', 'companyName'),
              companyId: BuiltValueNullFieldError.checkNotNull(
                  companyId, 'AdminUser', 'companyId'),
              employees: employees.build(),
              savedDishes: savedDishes.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'employees';
        employees.build();
        _$failedField = 'savedDishes';
        savedDishes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AdminUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AuthState extends AuthState {
  @override
  final AdminUser? user;
  @override
  final RegistrationInfo info;

  factory _$AuthState([void Function(AuthStateBuilder)? updates]) =>
      (new AuthStateBuilder()..update(updates)).build();

  _$AuthState._({this.user, required this.info}) : super._() {
    BuiltValueNullFieldError.checkNotNull(info, 'AuthState', 'info');
  }

  @override
  AuthState rebuild(void Function(AuthStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthStateBuilder toBuilder() => new AuthStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthState && user == other.user && info == other.info;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, user.hashCode), info.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthState')
          ..add('user', user)
          ..add('info', info))
        .toString();
  }
}

class AuthStateBuilder implements Builder<AuthState, AuthStateBuilder> {
  _$AuthState? _$v;

  AdminUserBuilder? _user;
  AdminUserBuilder get user => _$this._user ??= new AdminUserBuilder();
  set user(AdminUserBuilder? user) => _$this._user = user;

  RegistrationInfoBuilder? _info;
  RegistrationInfoBuilder get info =>
      _$this._info ??= new RegistrationInfoBuilder();
  set info(RegistrationInfoBuilder? info) => _$this._info = info;

  AuthStateBuilder();

  AuthStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _info = $v.info.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthState;
  }

  @override
  void update(void Function(AuthStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthState build() {
    _$AuthState _$result;
    try {
      _$result =
          _$v ?? new _$AuthState._(user: _user?.build(), info: info.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'info';
        info.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AuthState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$RegistrationInfo extends RegistrationInfo {
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
  final BuiltList<PaymentMethod> paymentMethods;
  @override
  final BuiltList<DeliveryOption> deliveryOptions;
  @override
  final String? address;
  @override
  final double? deliveryFee;
  @override
  final double? deliveryThreshold;
  @override
  final double? deliveryFeeThreshold;

  factory _$RegistrationInfo(
          [void Function(RegistrationInfoBuilder)? updates]) =>
      (new RegistrationInfoBuilder()..update(updates)).build();

  _$RegistrationInfo._(
      {this.email,
      this.password,
      this.firstName,
      this.lastName,
      this.companyName,
      this.image,
      this.openHour,
      this.closeHour,
      this.city,
      required this.paymentMethods,
      required this.deliveryOptions,
      this.address,
      this.deliveryFee,
      this.deliveryThreshold,
      this.deliveryFeeThreshold})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        paymentMethods, 'RegistrationInfo', 'paymentMethods');
    BuiltValueNullFieldError.checkNotNull(
        deliveryOptions, 'RegistrationInfo', 'deliveryOptions');
  }

  @override
  RegistrationInfo rebuild(void Function(RegistrationInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegistrationInfoBuilder toBuilder() =>
      new RegistrationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegistrationInfo &&
        email == other.email &&
        password == other.password &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        companyName == other.companyName &&
        image == other.image &&
        openHour == other.openHour &&
        closeHour == other.closeHour &&
        city == other.city &&
        paymentMethods == other.paymentMethods &&
        deliveryOptions == other.deliveryOptions &&
        address == other.address &&
        deliveryFee == other.deliveryFee &&
        deliveryThreshold == other.deliveryThreshold &&
        deliveryFeeThreshold == other.deliveryFeeThreshold;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(0,
                                                                email.hashCode),
                                                            password.hashCode),
                                                        firstName.hashCode),
                                                    lastName.hashCode),
                                                companyName.hashCode),
                                            image.hashCode),
                                        openHour.hashCode),
                                    closeHour.hashCode),
                                city.hashCode),
                            paymentMethods.hashCode),
                        deliveryOptions.hashCode),
                    address.hashCode),
                deliveryFee.hashCode),
            deliveryThreshold.hashCode),
        deliveryFeeThreshold.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RegistrationInfo')
          ..add('email', email)
          ..add('password', password)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('companyName', companyName)
          ..add('image', image)
          ..add('openHour', openHour)
          ..add('closeHour', closeHour)
          ..add('city', city)
          ..add('paymentMethods', paymentMethods)
          ..add('deliveryOptions', deliveryOptions)
          ..add('address', address)
          ..add('deliveryFee', deliveryFee)
          ..add('deliveryThreshold', deliveryThreshold)
          ..add('deliveryFeeThreshold', deliveryFeeThreshold))
        .toString();
  }
}

class RegistrationInfoBuilder
    implements Builder<RegistrationInfo, RegistrationInfoBuilder> {
  _$RegistrationInfo? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _companyName;
  String? get companyName => _$this._companyName;
  set companyName(String? companyName) => _$this._companyName = companyName;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _openHour;
  String? get openHour => _$this._openHour;
  set openHour(String? openHour) => _$this._openHour = openHour;

  String? _closeHour;
  String? get closeHour => _$this._closeHour;
  set closeHour(String? closeHour) => _$this._closeHour = closeHour;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  ListBuilder<PaymentMethod>? _paymentMethods;
  ListBuilder<PaymentMethod> get paymentMethods =>
      _$this._paymentMethods ??= new ListBuilder<PaymentMethod>();
  set paymentMethods(ListBuilder<PaymentMethod>? paymentMethods) =>
      _$this._paymentMethods = paymentMethods;

  ListBuilder<DeliveryOption>? _deliveryOptions;
  ListBuilder<DeliveryOption> get deliveryOptions =>
      _$this._deliveryOptions ??= new ListBuilder<DeliveryOption>();
  set deliveryOptions(ListBuilder<DeliveryOption>? deliveryOptions) =>
      _$this._deliveryOptions = deliveryOptions;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  double? _deliveryFee;
  double? get deliveryFee => _$this._deliveryFee;
  set deliveryFee(double? deliveryFee) => _$this._deliveryFee = deliveryFee;

  double? _deliveryThreshold;
  double? get deliveryThreshold => _$this._deliveryThreshold;
  set deliveryThreshold(double? deliveryThreshold) =>
      _$this._deliveryThreshold = deliveryThreshold;

  double? _deliveryFeeThreshold;
  double? get deliveryFeeThreshold => _$this._deliveryFeeThreshold;
  set deliveryFeeThreshold(double? deliveryFeeThreshold) =>
      _$this._deliveryFeeThreshold = deliveryFeeThreshold;

  RegistrationInfoBuilder();

  RegistrationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _companyName = $v.companyName;
      _image = $v.image;
      _openHour = $v.openHour;
      _closeHour = $v.closeHour;
      _city = $v.city;
      _paymentMethods = $v.paymentMethods.toBuilder();
      _deliveryOptions = $v.deliveryOptions.toBuilder();
      _address = $v.address;
      _deliveryFee = $v.deliveryFee;
      _deliveryThreshold = $v.deliveryThreshold;
      _deliveryFeeThreshold = $v.deliveryFeeThreshold;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegistrationInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegistrationInfo;
  }

  @override
  void update(void Function(RegistrationInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RegistrationInfo build() {
    _$RegistrationInfo _$result;
    try {
      _$result = _$v ??
          new _$RegistrationInfo._(
              email: email,
              password: password,
              firstName: firstName,
              lastName: lastName,
              companyName: companyName,
              image: image,
              openHour: openHour,
              closeHour: closeHour,
              city: city,
              paymentMethods: paymentMethods.build(),
              deliveryOptions: deliveryOptions.build(),
              address: address,
              deliveryFee: deliveryFee,
              deliveryThreshold: deliveryThreshold,
              deliveryFeeThreshold: deliveryFeeThreshold);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'paymentMethods';
        paymentMethods.build();
        _$failedField = 'deliveryOptions';
        deliveryOptions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RegistrationInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$EmployeeUser extends EmployeeUser {
  @override
  final String uid;
  @override
  final String adminId;
  @override
  final String email;
  @override
  final BuiltList<Role> roles;

  factory _$EmployeeUser([void Function(EmployeeUserBuilder)? updates]) =>
      (new EmployeeUserBuilder()..update(updates)).build();

  _$EmployeeUser._(
      {required this.uid,
      required this.adminId,
      required this.email,
      required this.roles})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(uid, 'EmployeeUser', 'uid');
    BuiltValueNullFieldError.checkNotNull(adminId, 'EmployeeUser', 'adminId');
    BuiltValueNullFieldError.checkNotNull(email, 'EmployeeUser', 'email');
    BuiltValueNullFieldError.checkNotNull(roles, 'EmployeeUser', 'roles');
  }

  @override
  EmployeeUser rebuild(void Function(EmployeeUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmployeeUserBuilder toBuilder() => new EmployeeUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmployeeUser &&
        uid == other.uid &&
        adminId == other.adminId &&
        email == other.email &&
        roles == other.roles;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, uid.hashCode), adminId.hashCode), email.hashCode),
        roles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EmployeeUser')
          ..add('uid', uid)
          ..add('adminId', adminId)
          ..add('email', email)
          ..add('roles', roles))
        .toString();
  }
}

class EmployeeUserBuilder
    implements Builder<EmployeeUser, EmployeeUserBuilder> {
  _$EmployeeUser? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _adminId;
  String? get adminId => _$this._adminId;
  set adminId(String? adminId) => _$this._adminId = adminId;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  ListBuilder<Role>? _roles;
  ListBuilder<Role> get roles => _$this._roles ??= new ListBuilder<Role>();
  set roles(ListBuilder<Role>? roles) => _$this._roles = roles;

  EmployeeUserBuilder();

  EmployeeUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _adminId = $v.adminId;
      _email = $v.email;
      _roles = $v.roles.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmployeeUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmployeeUser;
  }

  @override
  void update(void Function(EmployeeUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EmployeeUser build() {
    _$EmployeeUser _$result;
    try {
      _$result = _$v ??
          new _$EmployeeUser._(
              uid: BuiltValueNullFieldError.checkNotNull(
                  uid, 'EmployeeUser', 'uid'),
              adminId: BuiltValueNullFieldError.checkNotNull(
                  adminId, 'EmployeeUser', 'adminId'),
              email: BuiltValueNullFieldError.checkNotNull(
                  email, 'EmployeeUser', 'email'),
              roles: roles.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'roles';
        roles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'EmployeeUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
