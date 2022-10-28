import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/data/Loginmodel.dart';
import 'package:untitled2/repositories/repositories.dart';

class LoginBloc extends Bloc<LoginEvents, LoginStates> {
  LoginBloc() : super(LoginInitial()) {
    on<VerifyPassword>(verifyPassword);
  }

  Future<FutureOr<void>> verifyPassword(
      VerifyPassword event, Emitter<LoginStates> emit) async {
    emit(Loading());

    LoginModel loginModel;
    await Future.delayed(Duration(seconds: 2));

    Map map={
      "phone":event.name,
      "password":event.password

    };
    loginModel= await Repository().checkPhoneNumber(url: 'user/login',data: map);



    if(loginModel.status==true)
      {
        emit(LoginSuccess());

      }

    else if(
    loginModel.status==false

    )
      {
        emit(LoginError(error: "Invalid credentials"));

      }
    print(event.password);
    // if (event.name == "abc" && event.password == "123") {
    //   emit(LoginSuccess());
    // } else {
    //   emit(LoginError(error: "Invalid credentials"));
    // }
  }
}

class LoginEvents {}

class VerifyPassword extends LoginEvents {
  final String? name, password;
  final int? k;

  VerifyPassword({this.name, this.password,this.k});
}

class LoginStates {}

class LoginInitial extends LoginStates {}

class Loading extends LoginStates {}

class LoginSuccess extends LoginStates {}

class LoginError extends LoginStates {
  final String? error;

  LoginError({this.error});
}
