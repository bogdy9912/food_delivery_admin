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
        TypedEpic<AppState, Register$>(_register),
      ]);

  Stream<AppAction> _register(Stream<Register$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((Register$ action) => Stream<Register$>.value(action)
            .asyncMap((Register$ action) => _api.register(
                email: store.state.auth.info.email!,
                password: store.state.auth.info.password!,
                firstName: store.state.auth.info.firstName!,
                lastName: store.state.auth.info.lastName!,
                companyName: store.state.auth.info.companyName!,
                openHour: store.state.auth.info.openHour!,
                closeHour: store.state.auth.info.closeHour!,
                city: store.state.auth.info.city!))
            .map((AdminUser user) => Register.successful(user))
            .onErrorReturnWith((dynamic error) => Register.error(error)));
  }
}
