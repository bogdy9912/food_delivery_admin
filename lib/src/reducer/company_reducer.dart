import 'package:food_delivery_admin/src/actions/company/index.dart';
import 'package:food_delivery_admin/src/models/companies/index.dart';
import 'package:redux/redux.dart';

Reducer<CompanyState> companyReducer = combineReducers(<Reducer<CompanyState>>[
  TypedReducer<CompanyState, UpdateCategories$>(_updateCategories),
  TypedReducer<CompanyState, UpdateDishes$>(_updateDishes),
  TypedReducer<CompanyState, GetDailyMeniuSuccessful>(_getDailyMeniuSuccessful),
]);

CompanyState _updateCategories(CompanyState state, UpdateCategories$ action) {
  final Meniu meniuState = state.meniu ?? Meniu((MeniuBuilder b) => b.id = '1315');

  return state.rebuild((CompanyStateBuilder b) {
    if (action.add != null) {
      b.meniu = meniuState.toBuilder();
      b.meniu.items.add(action.add!);
    } else if (action.remove != null) {
      b.meniu.items.remove(action.remove);
    }
  });
}

CompanyState _updateDishes(CompanyState state, UpdateDishes$ action) {
  return state.rebuild((CompanyStateBuilder b) {
    final int index = b.meniu.items.build().indexWhere((MeniuItem e) => e.id == action.categoryId);

    if (action.add != null) {
      b.meniu.items[index] = b.meniu.items[index].rebuild((MeniuItemBuilder e) => e.dishes.add(action.add!));
    } else if (action.remove != null) {
      b.meniu.items[index]=  b.meniu.items[index].rebuild((MeniuItemBuilder e) => e.dishes.remove(action.remove));
    }
  });
}

CompanyState _getDailyMeniuSuccessful(CompanyState state, GetDailyMeniuSuccessful action) {
  return state.rebuild((CompanyStateBuilder b) => b.meniu = action.meniu.toBuilder());
}
