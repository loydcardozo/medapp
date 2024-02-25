import 'dart:convert';

List<Login> loginFromJson(String str) => List<Login>.from(json.decode(str).map((x) => Login.fromJson(x)));

String loginToJson(List<Login> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Login{
    int id;
    String firstName;
    String lastName;
    String profilePicture;
    String email;
    dynamic emailVerifiedAt;
    String dateOfBirth;
    String gender;
    String address;
    String phoneNumber;
    String healthInformation;
    DateTime createdAt;
    DateTime updatedAt;

    Login({
        required this.id,
        required this.firstName,
        required this.lastName,
        required this.profilePicture,
        required this.email,
        required this.emailVerifiedAt,
        required this.dateOfBirth,
        required this.gender,
        required this.address,
        required this.phoneNumber,
        required this.healthInformation,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Login.fromJson(Map<String, dynamic> json) => Login(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        profilePicture: json["profile_picture"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        dateOfBirth: json["date_of_birth"],
        gender: json["gender"],
        address: json["address"],
        phoneNumber: json["phone_number"],
        healthInformation: json["health_information"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "profile_picture": profilePicture,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "date_of_birth": dateOfBirth,
        "gender": gender,
        "address": address,
        "phone_number": phoneNumber,
        "health_information": healthInformation,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
