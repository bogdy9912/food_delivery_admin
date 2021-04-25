import 'package:food_delivery_admin/src/actions/auth/index.dart';
import 'package:food_delivery_admin/src/models/auth/index.dart';
import 'package:redux/redux.dart';

Reducer<AuthState> authReducer = combineReducers(<Reducer<AuthState>>[
  TypedReducer<AuthState, RegisterSuccessful>(_registerSuccessful),
]);
AuthState _registerSuccessful(AuthState state, RegisterSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => null);
}
