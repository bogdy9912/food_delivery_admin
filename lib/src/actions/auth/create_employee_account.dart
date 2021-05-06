part of auth_actions;

@freezed
abstract class CreateEmployeeAccount with _$CreateEmployeeAccount implements AppAction {
  const factory CreateEmployeeAccount(
      {required String email,
      required String password,
      required String lastName,
      required String firstName,
      required List<Role> roles}) = CreateEmployeeAccount$;

  const factory CreateEmployeeAccount.successful(String employeeId) = CreateEmployeeAccountSuccessful;

  @Implements(ErrorAction)
  const factory CreateEmployeeAccount.error(Object error) = CreateEmployeeAccountError;
}
