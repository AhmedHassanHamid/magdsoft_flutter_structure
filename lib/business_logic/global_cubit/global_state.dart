part of 'global_cubit.dart';

@immutable
abstract class GlobalState {}

class GlobalInitial extends GlobalState {}

class LoginLoadingState extends GlobalState {}

class LoginSuccessState extends GlobalState {
  final LoginResponse loginResponse;

  LoginSuccessState(this.loginResponse);
}

class LoginErrorState extends GlobalState {
  final String error;

  LoginErrorState(this.error);
}

class LoginPasswordVisibilityState extends GlobalState {}

class RegisterLoadingState extends GlobalState {}

class RegisterSuccessState extends GlobalState {}

class RegisterErrorState extends GlobalState {
  final String error;

  RegisterErrorState(this.error);
}

class RegisterPasswordVisibilityState extends GlobalState {}