import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery_admin/src/models/index.dart';

class CompanyApi {
  const CompanyApi({required FirebaseFirestore firestore, required this.f})
      : _firestore = firestore;

  final FirebaseFirestore _firestore;
  final dynamic f;

  Future<Meniu> getDailyMeniu({required String companyId}) async {
    final QuerySnapshot<Map<String, dynamic>> meniu =
        await _firestore.collection('companies/$companyId/meniu').get();
    return meniu.docs
        .map((QueryDocumentSnapshot<Object> e) => Meniu.fromJson(e.data()))
        .first;
  }

  Future<void> publishMeniu(
      {required String companyId, required Meniu meniu}) async {
    await _firestore
        .doc('companies/$companyId/meniu/${meniu.id}')
        .set(meniu.json);
  }
}
