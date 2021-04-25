part of auth_actions;

@freezed
abstract class Register with _$Register implements AppAction {
  const factory Register() = Register$;

  const factory Register.successful(AdminUser user) = RegisterSuccessful;

  @Implements(ErrorAction)
  const factory Register.error(Object error) = RegisterError;
}
