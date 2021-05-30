import 'package:food_delivery_admin/src/actions/company/index.dart';
import 'package:food_delivery_admin/src/actions/index.dart';
import 'package:food_delivery_admin/src/data/company_api.dart';
import 'package:food_delivery_admin/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class CompanyEpics {
  CompanyEpics({required CompanyApi api}) : _api = api;

  final CompanyApi _api;

  Epic<AppState> get epics => combineEpics(<Epic<AppState>>[
        TypedEpic<AppState, GetDailyMeniu$>(_getDailyMeniu),
        TypedEpic<AppState, PublishMeniu$>(_publishMeniu),
      ]);

  Stream<AppAction> _publishMeniu(
      Stream<PublishMeniu$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((PublishMeniu$ action) => Stream<PublishMeniu$>.value(action)
                .asyncMap((PublishMeniu$ action) => _api.publishMeniu(
                    companyId: store.state.auth.user!.companyId,
                    meniu: store.state.companyState.meniu!))
                .mapTo(const PublishMeniu.successful())
                .onErrorReturnWith((dynamic error) {
              print(error);
              return PublishMeniu.error(error);
            }));
  }

  Stream<AppAction> _getDailyMeniu(
      Stream<GetDailyMeniu$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetDailyMeniu$ action) => Stream<GetDailyMeniu$>.value(action)
                .asyncMap((GetDailyMeniu$ action) => _api.getDailyMeniu(
                    companyId: store.state.auth.user!.companyId))
                .map((Meniu meniu) => GetDailyMeniu.successful(meniu))
                .onErrorReturnWith((dynamic error) => GetDailyMeniu.error(error)).doOnData(action.response));
  }
}
