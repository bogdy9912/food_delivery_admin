part of auth_actions;

@freezed
abstract class AddSavedDishes with _$AddSavedDishes implements AppAction {
  const factory AddSavedDishes(
      {required String name,
      required String? description,
      required String price,
      required String quantity,
      required String? image}) = AddSavedDishes$;

  const factory AddSavedDishes.successful(Dish dish) = AddSavedDishesSuccessful;

  @Implements(ErrorAction)
  const factory AddSavedDishes.error(Object error) = AddSavedDishesError;
}
