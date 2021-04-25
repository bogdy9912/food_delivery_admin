import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_delivery_admin/src/data/search_index_all.dart';
import 'package:food_delivery_admin/src/models/auth/index.dart';
import 'package:food_delivery_admin/src/models/index.dart';

class AuthApi {
  AuthApi({required FirebaseAuth auth, required FirebaseFirestore firestore})
      : _auth = auth,
        _firestore = firestore;

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  Future<void> login({required String email, required String password}) async {}

  Future<AdminUser> register({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String companyName,
    required String openHour,
    required String closeHour,
    required String city,
  }) async {
    final DocumentReference ref = _firestore.collection('NOT USE').doc();
    final Company newCompany = Company((CompanyBuilder b) {
      b
        ..id = ref.id
        ..name = companyName
        ..city = city
        ..rating = 1
        ..closeHour = closeHour
        ..openHour = openHour
        ..image = null
        ..searchIndex = ListBuilder<String>(<String>[companyName].searchIndexAll);
    });
    await _firestore.doc('companies/${newCompany.id}').set(newCompany.json!);

    final UserCredential user = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    final AdminUser admin = AdminUser((AdminUserBuilder b) {
      b
        ..uid = user.user!.uid
        ..email = email
        ..companyName = companyName
        ..companyId = ref.id
        ..firstName = firstName
        ..lastName = lastName;
    });
    await _firestore.doc('admins/${admin.uid}').set(admin.json);
    return admin;
  }
}
