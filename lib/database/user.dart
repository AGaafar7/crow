import 'package:cloud_firestore/cloud_firestore.dart';

class UserDab {
  String? name;
  String? email;
  int? number;

  DocumentReference? reference;

  UserDab({
    required this.name,
    required this.email,
    this.number,
  });
  //json converters
  factory UserDab.fromJson(Map<dynamic, dynamic> json) => UserDab(
        name: json['name'] as String,
        email: json['email'] as String,
        number: json['number'] as int,
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'email': email,
        'number': number,
      };
  //fromSnapshot
  factory UserDab.fromSnapshot(DocumentSnapshot snapshot) {
    final user = UserDab.fromJson(snapshot.data() as Map<String, dynamic>);
    user.reference = snapshot.reference;
    return user;
  }
}
