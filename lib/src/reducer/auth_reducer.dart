import 'package:food_delivery_admin/src/actions/auth/index.dart';
import 'package:food_delivery_admin/src/models/auth/index.dart';
import 'package:redux/redux.dart';

Reducer<AuthState> authReducer = combineReducers(<Reducer<AuthState>>[
  TypedReducer<AuthState, RegisterSuccessful>(_registerSuccessfu),
]);
AuthState _registerSuccessfu(AuthState state, RegisterSuccessful action) {
  return state.rebuild((b) => null);
}
