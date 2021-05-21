part of company_actions;

@freezed
class GetDailyMeniu with _$GetDailyMeniu implements AppAction {
  const factory GetDailyMeniu() = GetDailyMeniu$;

  const factory GetDailyMeniu.successful(Meniu meniu) = GetDailyMeniuSuccessful;

  @Implements(ErrorAction)
  const factory GetDailyMeniu.error(Object error) = GetDailyMeniuError;
}
