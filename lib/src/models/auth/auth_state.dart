part of auth_models;

abstract class AuthState implements Built<AuthState, AuthStateBuilder> {
  factory AuthState([void Function(AuthStateBuilder b) updates]) = _$AuthState;
  factory AuthState.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json)!;

  AuthState._();

  AdminUser? get user;

  BuiltMap<String, EmployeeUser> get employees;

  RegistrationInfo get info;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<AuthState> get serializer => _$authStateSerializer;
}
