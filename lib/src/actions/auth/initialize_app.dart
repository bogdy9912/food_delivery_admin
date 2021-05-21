part of auth_actions;

@freezed
class InitializeApp with _$InitializeApp implements AppAction {
  const factory InitializeApp() = InitializeApp$;

  const factory InitializeApp.successful(AdminUser user) =
      InitializeAppSuccessful;

  @Implements(ErrorAction)
  const factory InitializeApp.error(Object error) = InitializeAppError;
}
