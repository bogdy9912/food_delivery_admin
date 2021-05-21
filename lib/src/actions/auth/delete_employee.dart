part of auth_actions;

@freezed
class DeleteEmployee with _$DeleteEmployee implements AppAction {
  const factory DeleteEmployee({required EmployeeUser employee}) = DeleteEmployee$;

  const factory DeleteEmployee.successful(EmployeeUser employee) = DeleteEmployeeSuccessful;

  @Implements(ErrorAction)
  const factory DeleteEmployee.error(Object error) = DeleteEmployeeError;
}
