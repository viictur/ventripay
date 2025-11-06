import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String id;
  String country;
  String firstName;
  String lastName;
  String middleName;
  String gender;
  String email;
  String phoneNumber;
  String password;
  List<String> interest;
  DateTime createdAt;
  DateTime updatedAt;
  String dob;

  UserModel({
    this.id = "",
    this.country = "",
    this.firstName = "",
    this.lastName = "",
    this.middleName = "",
    this.gender = "",
    this.email = "",
    this.phoneNumber = "",
    this.password = "",
    this.dob = "",
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
      middleName: data["middleName"] as String? ?? "",
      gender: data["gender"] as String? ?? "",
      email: data["email"] as String? ?? "",
      phoneNumber: data["phoneNumber"] as String? ?? "",
      password: data["password"] as String? ?? "",
      dob: data["dob"] as String? ?? "",
      // interest: data["interest"], //come back to this
      // createdAt: DateTime.parse(json['createdAt']),
      // updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'country': country,
      'firstName': firstName,
      'lastName': lastName,
      'middleName': middleName,
      'gender': gender,
      'email': email,
      'phoneNumber': phoneNumber,
      'password': password,
      'dob': dob,
      'interest': interest,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}
