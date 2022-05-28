import 'package:magdsoft_flutter_structure/data/models/account_model.dart';

class LoginResponse {
  LoginResponse({
    this.status,
    this.message,
    this.account,
  });

  int? status;
  String? message;
  List<AccountModel>? account;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        status: json["status"],
        message: json["message"],
        account: json["account"] != null
            ? List<AccountModel>.from(
                json["account"].map((x) => AccountModel.fromJson(x)))
            : json["account"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "account": List<dynamic>.from(account!.map((x) => x.toJson())),
      };
}
