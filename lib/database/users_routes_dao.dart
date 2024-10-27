import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crow/database/user_routes.dart';

class UserRoutesDao {
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('suggestedroad');

  void addUserRoutes(UserRoutes userRoutes) {
    collection.add(userRoutes.toJson());
  }

  void deleteUserRoutes() {}

  Stream<QuerySnapshot> getUserStream() {
    return collection.snapshots();
  }
}
