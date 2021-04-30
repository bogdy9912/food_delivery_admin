import 'package:built_collection/built_collection.dart';
import 'package:food_delivery_admin/src/actions/auth/index.dart';
import 'package:food_delivery_admin/src/models/auth/index.dart';
import 'package:food_delivery_admin/src/models/companies/index.dart';
import 'package:food_delivery_admin/src/models/index.dart';
import 'package:redux/redux.dart';

Reducer<AuthState> authReducer = combineReducers(<Reducer<AuthState>>[
  TypedReducer<AuthState, InitializeAppSuccessful>(_initializeAppSuccessful),
  TypedReducer<AuthState, LoginSuccessful>(_loginSuccessful),
  TypedReducer<AuthState, RegisterSuccessful>(_registerSuccessful),
  TypedReducer<AuthState, UpdateRegistrationInfo$>(_updateRegistrationInfo),
]);

AuthState _registerSuccessful(AuthState state, RegisterSuccessful action) {
  return state.rebuild((AuthStateBuilder b) {
    print('reducer');
    return b.user = action.user.toBuilder();
  });
}

AuthState _updateRegistrationInfo(AuthState state, UpdateRegistrationInfo$ action) {
  return state.rebuild((AuthStateBuilder b) {
    if (action.email != null) {
      print('reducer email');
      b.info.email = action.email;
    }
    if (action.password != null) {
      b.info.password = action.password;
    }
    if (action.firstName != null) {
      b.info.firstName = action.firstName;
    }
    if (action.lastName != null) {
      b.info.lastName = action.lastName;
    }
    if (action.companyName != null) {
      print('reducer comapny mail');
      b.info.companyName = action.companyName;
    }
    if (action.image != null) {
      b.info.image = action.image;
    }
    if (action.openHour != null) {
      b.info.openHour = action.openHour;
    }
    if (action.closeHour != null) {
      b.info.closeHour = action.closeHour;
    }
    if (action.city != null) {
      b.info.city = action.city;
    }
    if (action.address != null) {
      b.info.address = action.address;
    }
    if (action.paymentMethods != null) {
      b.info.paymentMethods = ListBuilder<PaymentMethod>(action.paymentMethods!);
    }
    if (action.deliveryOptions != null) {
      b.info.deliveryOptions = ListBuilder<DeliveryOption>(action.deliveryOptions!);
    }
    if (action.deliveryFee != null) {
      b.info.deliveryFee = action.deliveryFee;
    }
    if (action.deliveryThreshold != null) {
      b.info.deliveryThreshold = action.deliveryThreshold;
    }
    if (action.deliveryFeeThreshold != null) {
      b.info.deliveryFeeThreshold = action.deliveryFeeThreshold;
    }
    if (action.email == null &&
        action.password == null &&
        action.firstName == null &&
        action.lastName == null &&
        action.companyName == null &&
        action.image == null &&
        action.openHour == null &&
        action.closeHour == null &&
        action.city == null &&
        action.deliveryOptions == null &&
        action.address == null &&
        action.deliveryFee == null &&
        action.deliveryThreshold == null &&
        action.deliveryFeeThreshold == null) {
      b.info = RegistrationInfo().toBuilder();
    }
  });
}

AuthState _loginSuccessful(AuthState state, LoginSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user.toBuilder());
}

AuthState _initializeAppSuccessful(AuthState state, InitializeAppSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user.toBuilder());
}
