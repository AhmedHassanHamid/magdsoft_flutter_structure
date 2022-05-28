import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magdsoft_flutter_structure/data/network/responses/login_response.dart';
import 'package:magdsoft_flutter_structure/data/remote/dio_helper.dart';

part 'global_state.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit() : super(GlobalInitial());

  LoginResponse? loginResponse;

  static GlobalCubit get(context) => BlocProvider.of(context);
  
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
