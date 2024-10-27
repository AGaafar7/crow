import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crow/database/user.dart';

class UserDao {
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('user');

  void addUser(UserDab user) {
    collection.add(user.toJson());
  }

  void deleteUser() {}

  Stream<QuerySnapshot> getUserStream() {
    return collection.snapshots();
  }
}
