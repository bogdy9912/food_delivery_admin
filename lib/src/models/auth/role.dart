part of auth_models;

class Role extends EnumClass {
  const Role._(String name) : super(name);

  static const Role receptionist = _$receptionist;
  static const Role driver = _$driver;

  static BuiltSet<Role> get values => _$values;

  static Role valueOf(String name) => _$valueOf(name);

  static Serializer<Role> get serializer => _$roleSerializer;
}
