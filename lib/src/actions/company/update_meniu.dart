part of company_actions;

@freezed
abstract class UpdateCategories with _$UpdateCategories implements AppAction {
  const factory UpdateCategories({MeniuItem? add, MeniuItem? remove}) = UpdateCategories$;
}

@freezed
abstract class UpdateDishes with _$UpdateDishes implements AppAction {
  const factory UpdateDishes({Dish? add, Dish? remove, required String categoryId}) = UpdateDishes$;
}
