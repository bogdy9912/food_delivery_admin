import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:food_delivery_admin/src/actions/auth/index.dart';
import 'package:food_delivery_admin/src/data/auth_api.dart';
import 'package:food_delivery_admin/src/data/company_api.dart';
import 'package:food_delivery_admin/src/epics/app_epics.dart';
import 'package:food_delivery_admin/src/models/index.dart';
import 'package:food_delivery_admin/src/reducer/reducer.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

Future<Store<AppState>> init() async {
  await Firebase.initializeApp();

  final AuthApi authApi = AuthApi(
      auth: FirebaseAuth.instance,
      firestore: FirebaseFirestore.instance,
      storage: FirebaseStorage.instance);
  final CompanyApi companyApi = CompanyApi(
      firestore: FirebaseFirestore.instance,
      f: FirebaseFirestore.instance.collection('companies/'));

  final AppEpics epic = AppEpics(authApi: authApi, companyApi: companyApi);

  return Store<AppState>(
    reducer,
    initialState: AppState.initialState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epic.epics),
    ],
  )..dispatch(const InitializeApp());
}
