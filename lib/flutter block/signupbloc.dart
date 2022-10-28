import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/data/Loginmodel.dart';
import 'package:untitled2/repositories/repositories.dart';

class SignupBloc extends Bloc<SignEvents, SignStates> {
  SignupBloc() : super(LoginInitial()) {
    on<SignupPassword>(_signupPassword);
  }

  Future<FutureOr<void>> _signupPassword(
      SignupPassword event, Emitter<SignStates> emit) async {
    emit(Fetching());

    LoginModel loginModel;
    await Future.delayed(Duration(seconds: 2));

    Map map={
       "phone":event.password,
           "password":event.name,
             "role":event.role

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

class SignEvents {}

class SignupPassword extends SignEvents {
  final String? name, password,role;

  SignupPassword({this.name, this.password,this.role});
}

class SignStates {}

class LoginInitial extends SignStates {}

class Loading extends SignStates {}

class LoginSuccess extends SignStates {}
class Fetching extends SignStates {}
class LoginError extends SignStates {
  final String? error;

  LoginError({this.error});
}
