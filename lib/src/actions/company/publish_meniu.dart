part of company_actions;

@freezed
class PublishMeniu with _$PublishMeniu implements AppAction {
  const factory PublishMeniu() = PublishMeniu$;

  const factory PublishMeniu.successful() = PublishMeniuSuccessful;

  @Implements(ErrorAction)
  const factory PublishMeniu.error(Object error) = PublishMeniuError;
}
