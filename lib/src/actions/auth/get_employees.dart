part of auth_actions;

@freezed
class GetEmployees with _$GetEmployees implements AppAction {
  const factory GetEmployees({required String adminId}) = GetEmployees$;

  const factory GetEmployees.successful(Map<String, EmployeeUser> employees) = GetEmployeesSuccessful;

  @Implements(ErrorAction)
  const factory GetEmployees.error(Object error) = GetEmployeesError;
}
