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
        TypedEpic<AppState, CreateEmployeeAccount$>(_createEmployeeAccount),
        TypedEpic<AppState, AddSavedDishes$>(_addSavedDishes),
        TypedEpic<AppState, RemoveSavedDishes$>(_removeSavedDishes),
        TypedEpic<AppState, EditSavedDishes$>(_editSavedDishes),
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

  Stream<AppAction> _createEmployeeAccount(Stream<CreateEmployeeAccount$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreateEmployeeAccount$ action) => Stream<CreateEmployeeAccount$>.value(action)
            .asyncMap((CreateEmployeeAccount$ action) => _api.createEmployeeAccount(
                email: action.email,
                password: action.password,
                adminId: store.state.auth.user!.uid,
                roles: action.roles))
            .map((String employeeId) => CreateEmployeeAccount.successful(employeeId))
            .onErrorReturnWith((dynamic error) => CreateEmployeeAccount.error(error)));
  }

  Stream<AppAction> _addSavedDishes(Stream<AddSavedDishes$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((AddSavedDishes$ action) => Stream<AddSavedDishes$>.value(action)
            .asyncMap((AddSavedDishes$ action) => _api.addSavedDishes(
                adminId: store.state.auth.user!.uid,
                name: action.name,
                description: action.description,
                price: action.price,
                quantity: action.quantity,
                image: action.image))
            .map((Dish dish) => AddSavedDishes.successful(dish))
            .onErrorReturnWith((dynamic error) => AddSavedDishes.error(error)));
  }

  Stream<AppAction> _removeSavedDishes(Stream<RemoveSavedDishes$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((RemoveSavedDishes$ action) => Stream<RemoveSavedDishes$>.value(action)
            .asyncMap((RemoveSavedDishes$ action) =>
                _api.removeSavedDishes(adminId: store.state.auth.user!.uid, id: action.id))
            .map((String id) => RemoveSavedDishes.successful(id))
            .onErrorReturnWith((dynamic error) => RemoveSavedDishes.error(error)));
  }

  Stream<AppAction> _editSavedDishes(Stream<EditSavedDishes$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((EditSavedDishes$ action) => Stream<EditSavedDishes$>.value(action)
            .asyncMap((EditSavedDishes$ action) => _api.editSavedDishes(
                adminId: store.state.auth.user!.uid,
                id: action.id,
                name: action.name,
                description: action.description,
                price: action.price,
                quantity: action.quantity,
                image: action.image))
            .map((Dish dish) => EditSavedDishes.successful(dish))
            .onErrorReturnWith((dynamic error) => EditSavedDishes.error(error)));
  }
}
