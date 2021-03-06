part of auth_actions;

@freezed
class Register with _$Register implements AppAction {
  const factory Register(ActionResponse response) = Register$;

  const factory Register.successful(AdminUser user) = RegisterSuccessful;

  @Implements(ErrorAction)
  const factory Register.error(Object error) = RegisterError;
}
