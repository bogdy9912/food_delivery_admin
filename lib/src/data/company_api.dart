import 'package:cloud_firestore/cloud_firestore.dart';

class CompanyApi{
  const CompanyApi({required FirebaseFirestore firestore }):_firestore = firestore;


  final FirebaseFirestore _firestore;


  Future<void> addCategory({required String newCategory, required String companyId})async{
//    _firestore.doc('companies/$companyId').set();
  }

}