part of auth_models;

abstract class AdminUser implements Built<AdminUser, AdminUserBuilder> {
  factory AdminUser([void Function(AdminUserBuilder b) updates]) = _$AdminUser;
  factory AdminUser.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json)!;

  AdminUser._();

  String get uid;

  String get email;

  String get firstName;

  String get lastName;

  String get companyName;

  String get companyId;

  BuiltList<String> get employees;

  BuiltMap<String, Dish> get savedDishes;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<AdminUser> get serializer => _$adminUserSerializer;
}
