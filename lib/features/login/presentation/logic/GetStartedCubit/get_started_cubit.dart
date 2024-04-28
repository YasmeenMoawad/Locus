import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:locus/features/login/data/Cache_Helper/CacheHelper.dart';
import 'package:locus/features/login/data/Dio/Dio_File.dart';

import '../../views/verification.dart';

part 'get_started_state.dart';

class GetStartedCubit extends Cubit<GetStartedState> {
  GetStartedCubit() : super(GetStartedInitial());
  static GetStartedCubit get(context) => BlocProvider.of(context);

  Register({
    name,
    email,
    password,
    password_confirmation,
    context,
  }) {
    emit(GetStartedLoading());

    AppDioHelper.postData(url: 'register', data: {
      'name': name,
      'email': email,
      'password': password,
      'password_confirmation': password_confirmation,
    }).then((value) {
      print(value);
      Fluttertoast.showToast(
          msg: "Sign Up successfully",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0
      );
      CacheHelper.savedata(key: 'email', value: email.toString());
      CacheHelper.savedata(key: 'token', value: value.data['token'].toString());
      emit(GetStartedSuccess());
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
               VerificationScreen()));

    }).catchError(onError);
  }



}
