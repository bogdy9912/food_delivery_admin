import 'package:food_delivery_admin/src/actions/auth/index.dart';
import 'package:food_delivery_admin/src/actions/index.dart';
import 'package:food_delivery_admin/src/data/auth_api.dart';
import 'package:food_delivery_admin/src/models/auth/index.dart';
import 'package:food_delivery_admin/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AuthEpics {
  AuthEpics({required AuthApi api}) : _api = api;

  final AuthApi _api;

  Epic<AppState> get epics => combineEpics(<Epic<AppState>>[
        TypedEpic<AppState, InitializeApp$>(_initializeApp),
        TypedEpic<AppState, Login$>(_login),
        TypedEpic<AppState, Register$>(_register),
      ]);

  Stream<AppAction> _register(Stream<Register$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((Register$ action) => Stream<Register$>.value(action)
            .asyncMap((Register$ action) {
              return _api.register(
                email: store.state.auth.info.email!,
                password: store.state.auth.info.password!,
                firstName: store.state.auth.info.firstName!,
                lastName: store.state.auth.info.lastName!,
                companyName: store.state.auth.info.companyName!,
                address: store.state.auth.info.address!,
                openHour: store.state.auth.info.openHour!,
                closeHour: store.state.auth.info.closeHour!,
                city: store.state.auth.info.city!,
                deliveryFee: store.state.auth.info.deliveryFee!,
                deliveryFeeThreshold: store.state.auth.info.deliveryFeeThreshold!,
                deliveryThreshold: store.state.auth.info.deliveryThreshold!,
//                  deliveryOptions: store.state.auth.info.deliveryOptions.toList(),
//                  paymentMethods: store.state.auth.info.paymentMethods.toList(),
              );
            })
            .map((AdminUser user) => Register.successful(user))
            .onErrorReturnWith((dynamic error) => Register.error(error))
            .doOnData(action.response));
  }

  Stream<AppAction> _login(Stream<Login$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((Login$ action) => Stream<Login$>.value(action)
            .asyncMap((Login$ action) => _api.login(email: action.email, password: action.password))
            .map((AdminUser user) => Login.successful(user))
            .onErrorReturnWith((dynamic error) => Login.error(error))
            .doOnData(action.response));
  }

  Stream<AppAction> _initializeApp(Stream<InitializeApp$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((InitializeApp$ action) => Stream<InitializeApp$>.value(action)
            .asyncMap((InitializeApp$ action) => _api.initializeApp())
            .map((AdminUser user) => InitializeApp.successful(user))
            .onErrorReturnWith((dynamic error) => InitializeApp.error(error)));
  }
}
