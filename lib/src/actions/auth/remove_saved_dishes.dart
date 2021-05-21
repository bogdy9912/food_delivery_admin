part of auth_actions;

@freezed
class RemoveSavedDishes with _$RemoveSavedDishes implements AppAction {
  const factory RemoveSavedDishes({required String id}) = RemoveSavedDishes$;

  const factory RemoveSavedDishes.successful(String id) =
      RemoveSavedDishesSuccessful;

  @Implements(ErrorAction)
  const factory RemoveSavedDishes.error(Object error) = RemoveSavedDishesError;
}
