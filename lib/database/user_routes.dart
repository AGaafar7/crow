import 'package:cloud_firestore/cloud_firestore.dart';

class UserRoutes {
  String? residency;
  String? destinationOne;
  String? destinationTwo;

  DocumentReference? reference;

  UserRoutes({
    required this.residency,
    required this.destinationOne,
    this.destinationTwo,
  });
  //json converters
  factory UserRoutes.fromJson(Map<dynamic, dynamic> json) => UserRoutes(
        residency: json['Residence'] as String,
        destinationOne: json['destone'] as String,
        destinationTwo: json['desttwo'] as String?,
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'Residence': residency,
        'destone': destinationOne,
        'desttwo': destinationTwo,
      };
  //fromSnapshot
  factory UserRoutes.fromSnapshot(DocumentSnapshot snapshot) {
    final user = UserRoutes.fromJson(snapshot.data() as Map<String, dynamic>);
    user.reference = snapshot.reference;
    return user;
  }
}
