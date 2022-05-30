import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magdsoft_flutter_structure/constants/end_points.dart';
import 'package:magdsoft_flutter_structure/data/models/account_model.dart';
import 'package:magdsoft_flutter_structure/data/network/responses/login_response.dart';
import 'package:magdsoft_flutter_structure/data/remote/dio_helper.dart';

part 'global_state.dart';

class GlobalCubit extends Cubit<List<AccountModel>> {
  GlobalCubit() : super([]);

   LoginResponse? loginResponse;

  static GlobalCubit get(context) => BlocProvider.of(context);

  Future userLogin({
    required String? email,
    required String? password,
    required String endPoint,
  }) async {
    print('lol');
    await DioHelper.postData(url: endPoint, body: {
      'email': email,
      'password': password,
    }).then((value) {
      print('m');
      final myData = Map<String, dynamic>.from(value.data);
      loginResponse = LoginResponse.fromJson(myData);
      print(loginResponse!.account);
    });
    return loginResponse!.account;
  }

  Future userRegister({
    required String? name,
    required String? email,
    required String? password,
    required String? phone,
  }) async {
    await DioHelper.postData(url: register, body: {
      'name' : name,
      'email': email,
      'password': password,
      'phone' : phone,
    }).then((value) {
      print(value.data);
      final myData = Map<String, dynamic>.from(value.data);
      loginResponse = LoginResponse.fromJson(myData);
    }).catchError((error) {
      print(error.toString());
    });
  }
}

