import 'package:food_delivery_admin/src/data/auth_api.dart';
import 'package:food_delivery_admin/src/epics/auth_epics.dart';
import 'package:food_delivery_admin/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';

class AppEpics{
  AppEpics({required AuthApi authApi}): _authApi=authApi;

  final AuthApi _authApi;

  Epic<AppState> get epics => combineEpics(<Epic<AppState>>[
    AuthEpics(api: _authApi).epics,
  ]);
}