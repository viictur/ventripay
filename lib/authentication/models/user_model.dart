import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String id;
  String country;
  String firstName;
  String lastName;
  String gender;
  String email;
  String phoneNumber;
  String password;
  List<String> interest;
  DateTime createdAt;
  DateTime updatedAt;

  UserModel({
    this.id = "",
    this.country = "",
    this.firstName = "",
    this.lastName = "",
    this.gender = "",
    this.email = "",
    this.phoneNumber = "",
    this.password = "",
    this.interest = const [],
    DateTime? createdAt,
    DateTime? updatedAt,
  }) : createdAt = createdAt ?? DateTime.now(),
       updatedAt = updatedAt ?? DateTime.now();

  factory UserModel.fromJson(DocumentSnapshot json) {
    //docnapshot- from firestore
    final data = json.data() as Map<String, dynamic>;
    return UserModel(
      id: json.id,
      country: data["country"] as String? ?? "",
      firstName: data["firstName"] as String? ?? "",
      lastName: data["lastName"] as String? ?? "",
      gender: data["gender"] as String? ?? "",
      email: data["email"] as String? ?? "",
      phoneNumber: data["phoneNumber"] as String? ?? "",
      password: data["password"] as String? ?? "",
      interest: data["interest"], //come back to this
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'country': country,
      'firstName': firstName,
      'lastName': lastName,
      'gender': gender,
      'email': email,
      'phoneNumber': phoneNumber,
      'password': password,
      'interest': interest,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}
