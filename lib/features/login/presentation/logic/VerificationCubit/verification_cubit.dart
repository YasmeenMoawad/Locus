import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:locus/features/login/data/Cache_Helper/CacheHelper.dart';
import 'package:locus/features/login/data/Dio/Dio_File.dart';

part 'verification_state.dart';

class VerificationCubit extends Cubit<VerificationState> {
  VerificationCubit() : super(VerificationInitial());

  static VerificationCubit get(context) => BlocProvider.of(context);
  TextEditingController pin = TextEditingController();
  emailVerification() {
    emit(VerificationLoading());

    AppDioHelper.postData(
        url: 'email-verification',
        data: {
          'email': CacheHelper.getdata(key: 'email'),
          'otp': pin.text},
        token: 'Bearer ${CacheHelper.getdata(key: 'token')}'
    ).then((value){
          print(value.toString());
          emit(VerificationSuccess());
          
    }).catchError((error){
      emit(VerificationError());

    });
  }
}
