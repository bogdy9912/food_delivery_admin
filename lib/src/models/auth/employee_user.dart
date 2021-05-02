part of auth_models;

abstract class EmployeeUser implements Built<EmployeeUser, EmployeeUserBuilder> {
  factory EmployeeUser([void Function(EmployeeUserBuilder b) updates]) = _$EmployeeUser;
  factory EmployeeUser.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  EmployeeUser._();

  String get uid;

  String get adminId;

  String get email;

  BuiltList<Role> get roles;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<EmployeeUser> get serializer => _$employeeUserSerializer;
}