part of auth_actions;

@freezed
abstract class EditSavedDishes with _$EditSavedDishes implements AppAction {
  const factory EditSavedDishes({
    required String id,
    required String name,
    required String description,
    required String price,
    required String quantity,
    required String? image,
  }) = EditSavedDishes$;

  const factory EditSavedDishes.successful(Dish dish) = EditSavedDishesSuccessful;

  @Implements(ErrorAction)
  const factory EditSavedDishes.error(Object error) = EditSavedDishesError;
}
