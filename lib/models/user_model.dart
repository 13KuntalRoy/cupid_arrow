
import 'package:cloud_firestore/cloud_firestore.dart';


class User {
  final String id;
  final String name;
  final bool? isBlocked;
  late String address;
  final Map? coordinates;
  final List? sexualOrientation;
  final String? gender;
  final String? showGender;
  final int age;
  final String? phoneNumber;
  int? maxDistance;
  final Map? ageRange;
  final Map? editInfo;
  List imageUrl = [];
  dynamic distanceBW;
  User({
    required this.id,
    required this.age,
    required this.address,
    this.isBlocked,
    this.coordinates,
    required this.name,
    required this.imageUrl,
    this.phoneNumber,
    this.gender,
    this.showGender,
    this.ageRange,
    this.maxDistance,
    this.editInfo,
    this.distanceBW,
    this.sexualOrientation,

  });
  factory User.fromDocument(DocumentSnapshot doc) {
    // DateTime date = DateTime.parse(doc["user_DOB"]);
    return User(
        id: doc['userId'],
        isBlocked: doc['isBlocked'] ?? false,
        phoneNumber: doc['phoneNumber'],
        name: doc['UserName'],
        editInfo: doc['editInfo'],
        ageRange: doc['age_range'],
        showGender: doc['showGender'],
        maxDistance: doc['maximum_distance'],
        sexualOrientation: doc['sexualOrientation']['orientation'] ?? "",
        age: ((DateTime.now()
            .difference(DateTime.parse(doc["user_DOB"]))
            .inDays) /
            365.2425)
            .truncate(),
        address: doc['location']['address'],
        coordinates: doc['location'],
        // university: doc['editInfo']['university'],
        imageUrl: doc['Pictures'] != null
            ? List.generate(doc['Pictures'].length, (index) {
          return doc['Pictures'][index];
        })
            : []);
  }
}