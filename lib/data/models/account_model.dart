class AccountModel {
  int id;
  String name;
  String email;
  String password;
  String phone;

  AccountModel({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
  });

  factory AccountModel.fromJson(Map<String, dynamic> json) => AccountModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "password": password,
        "phone": phone,
      };
}
