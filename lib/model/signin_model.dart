import 'dart:convert';

class Login {
    String email;
    String password;

    Login({
        required this.email,
        required this.password,
    });

    factory Login.fromRawJson(String str) => Login.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Login.fromJson(Map<String, dynamic> json) => Login(
        email: json["email"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
    };
}
