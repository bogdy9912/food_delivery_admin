import 'package:food_delivery_admin/src/models/index.dart';
import 'package:food_delivery_admin/src/reducer/auth_reducer.dart';
import 'package:food_delivery_admin/src/reducer/company_reducer.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  _reducer,
]);

AppState _reducer(AppState state, dynamic action) {
  return state.rebuild((AppStateBuilder b) {
    return b
      ..auth = authReducer(state.auth, action).toBuilder()
      ..companyState = companyReducer(state.companyState, action).toBuilder();
  });
}
