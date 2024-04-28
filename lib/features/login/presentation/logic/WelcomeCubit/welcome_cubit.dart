import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../data/Cache_Helper/CacheHelper.dart';
import '../../../data/Dio/Dio_File.dart';
import '../../views/verification.dart';
import '../../views/widgets/MyPlanetScreen.dart';

part 'welcome_state.dart';

class WelcomeCubit extends Cubit<WelcomeState> {
  WelcomeCubit() : super(WelcomeInitial());
  static WelcomeCubit get(context) => BlocProvider.of(context);
  Login({
    email,
    password,
    context,
  }) {
    emit(WelcomeLoading());

    AppDioHelper.postData(url: 'login', data: {
      'email': email,
      'password': password,
    }).then((value) {
      print(value);
      Fluttertoast.showToast(
          msg: "Welcoma Back",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0
      );

      CacheHelper.savedata(key: 'email', value: email.toString());
      CacheHelper.savedata(key: 'token', value: value.data['token'].toString());
      emit(WelcomeSuccss());
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  MyPlanetScreen()));

    }).catchError((error){
      emit(WelcomeError());
    });
  }
}
