import 'dart:convert';

class Register {
  String email;
  String password;
  String name;
  String phoneNumber;

  Register({
    required this.email,
    required this.password,
    required this.name,
    required this.phoneNumber,
  });

  factory Register.fromRawJson(String str) => Register.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Register.fromJson(Map<String, dynamic> json) => Register(
        email: json["email"],
        password: json["password"],
        name: json["name"],
        phoneNumber: json["phoneNumber"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "name": name,
        "phoneNumber": phoneNumber,
      };
}
