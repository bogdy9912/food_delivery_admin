import 'package:food_delivery_admin/src/data/auth_api.dart';
import 'package:food_delivery_admin/src/data/company_api.dart';
import 'package:food_delivery_admin/src/epics/auth_epics.dart';
import 'package:food_delivery_admin/src/epics/company_epics.dart';
import 'package:food_delivery_admin/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';

class AppEpics {
  AppEpics({required AuthApi authApi, required CompanyApi companyApi})
      : _authApi = authApi,
        _companyApi = companyApi;

  final AuthApi _authApi;
  final CompanyApi _companyApi;

  Epic<AppState> get epics => combineEpics(<Epic<AppState>>[
        AuthEpics(api: _authApi).epics,
        CompanyEpics(api: _companyApi).epics,
      ]);
}
