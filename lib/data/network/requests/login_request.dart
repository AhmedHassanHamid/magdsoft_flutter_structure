import 'package:magdsoft_flutter_structure/data/network/responses/login_response.dart';
import 'package:magdsoft_flutter_structure/data/remote/dio_helper.dart';

LoginResponse? loginResponse;

class LoginRequest{
  Future userLogin({
    required String? email,
    required String? password,
    required String endPoint,
  }) async {
    await DioHelper.postData(url: endPoint, body: {
      'email': email,
      'password': password,
    }).then((value) {
      final myData = Map<String, dynamic>.from(value.data);
      loginResponse = LoginResponse.fromJson(myData);
      print(value);
    });
    return loginResponse!.user;
  }
}



