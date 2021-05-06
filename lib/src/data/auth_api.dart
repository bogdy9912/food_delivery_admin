import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:food_delivery_admin/src/data/search_index_all.dart';
import 'package:food_delivery_admin/src/models/auth/index.dart';
import 'package:food_delivery_admin/src/models/index.dart';
import 'package:food_delivery_admin/src/models/orders/index.dart';

class AuthApi {
  AuthApi({required FirebaseAuth auth, required FirebaseFirestore firestore, required FirebaseStorage storage})
      : _auth = auth,
        _firestore = firestore,
        _storage = storage;

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;

  Future<AdminUser> initializeApp() async {
    final User user = _auth.currentUser!;
    final DocumentSnapshot result = await _firestore.doc('admins/${user.uid}').get();
    return AdminUser.fromJson(result.data());
  }

  Future<AdminUser> login({required String email, required String password}) async {
    final UserCredential user = await _auth.signInWithEmailAndPassword(email: email, password: password);
    final DocumentSnapshot response = await _firestore.doc('admins/${user.user!.uid}').get();

    return AdminUser.fromJson(response.data());
  }

  Future<AdminUser> register({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String companyName,
    required String address,
    required String openHour,
    required String closeHour,
    required String city,
    required double deliveryFeeThreshold,
    required double deliveryFee,
    required double deliveryThreshold,
//    required List<DeliveryOption> deliveryOptions,
//    required List<PaymentMethod> paymentMethods,
  }) async {
    final DocumentReference ref = _firestore.collection('NOT USE').doc();
    final Company newCompany = Company((CompanyBuilder b) {
      b
        ..id = ref.id
        ..name = companyName
        ..city = city
        ..address = address
        ..rating = 1
        ..closeHour = closeHour
        ..openHour = openHour
        ..deliveryFeeThreshold = deliveryFeeThreshold
        ..deliveryFee = deliveryFee
        ..deliveryThreshold = deliveryThreshold
        ..image = null
//        ..deliveryOptions = ListBuilder<DeliveryOption>(deliveryOptions)
        ..deliveryOptions = ListBuilder<DeliveryOption>(<DeliveryOption>[DeliveryOption.home, DeliveryOption.pickup])
//        ..paymentMethods = ListBuilder<PaymentMethod>(paymentMethods)
        ..paymentMethods = ListBuilder<PaymentMethod>(<PaymentMethod>[PaymentMethod.card, PaymentMethod.cash])
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

  Future<String> createEmployeeAccount({
    required String email,
    required String password,
    required String adminId,
    required List<Role> roles,
  }) async {
    final UserCredential user = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    final EmployeeUser newEmployee = EmployeeUser((EmployeeUserBuilder b) => b
      ..uid = user.user!.uid
      ..email = email
      ..adminId = adminId
      ..roles = ListBuilder<Role>(roles));
    await _firestore.doc('employees/${user.user!.uid}').set(newEmployee.json);

    await _firestore.doc('admins/$adminId').update(<String, dynamic>{
      'employees': FieldValue.arrayUnion(<String>[user.user!.uid])
    });

    return user.user!.uid;
  }

  Future<Dish> addSavedDishes({
    required String adminId,
    required String name,
    required String? description,
    required String price,
    required String quantity,
    required String? image,
  }) async {
    final DocumentReference ref = _firestore.collection('NOT USE').doc();
    String? downloadImage;
    if (image != null) {
      downloadImage = await _uploadImage(adminId, ref.id, image);
    }
    print('data add saved 1');
    final Dish newDish = Dish((DishBuilder b) => b
      ..id = ref.id
      ..name = name
      ..description = description
      ..quantity = int.parse(quantity)
      ..price = double.parse(price)
      ..image = downloadImage);
    print('data add saved 2');
    await _firestore.doc('admins/$adminId').update(<String, dynamic>{'savedDishes.${ref.id}': newDish.json});
    print('data add saved 3');
    return newDish;
  }

  Future<String> _uploadImage(String adminId, String dishId, String path) async {
    final Reference refResult = _storage.ref('admins/$adminId/savedDishes/$dishId');
    await refResult.putFile(File(path));

    final String url = await refResult.getDownloadURL();

    return url;
  }

  Future<String> removeSavedDishes({required String adminId, required String id}) async {
    await _firestore.doc('admins/$adminId').update(<String, dynamic>{'savedDishes.$id': FieldValue.delete()});
    await _storage.ref('admins/$adminId/savedDishes/$id').delete();
    return id;
  }

  Future<Dish> editSavedDishes(
      {required String adminId,
      required String id,
      required String name,
      required String description,
      required String price,
      required String quantity,
      required String? image}) async {
    String? downloadImage;
    if (image != null) {
      downloadImage = await _uploadImage(adminId, id, image);
    }
    final Dish newDish = Dish((DishBuilder b) => b
      ..id = id
      ..name = name
      ..description = description
      ..quantity = int.parse(quantity)
      ..price = double.parse(price)
      ..image = downloadImage);
    await _firestore.doc('admins/$adminId').update(<String, dynamic>{'savedDishes.$id': newDish.json});
    return newDish;
  }
}
