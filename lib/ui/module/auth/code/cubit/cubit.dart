import 'package:flutter_bloc/flutter_bloc.dart';
import 'state.dart';

class CodeCubit extends Cubit<CodeStates> {
  CodeCubit() : super(CodeInitialState());

  static CodeCubit get(context) => BlocProvider.of(context);

  var duration = DateTime.now().add(const Duration(
    days: 0,
    hours: 0,
    minutes: 1,
    seconds: 0,
  ));
  bool canResendCode = false;

  void changeResendState() {
    canResendCode = !canResendCode;
    emit(CodeEndTimerState());
  }

  // void verifyCode({
  //   required String countryCode,
  //   required String phone,
  //   required String code,
  //   required String fcmToken,
  //   required int isRegister,
  // }) {
  //   emit(CodeLoadingState());
  //   AppRepository.postRequest(
  //     endPoint: VERIFICATION_END_POINT,
  //     data: {
  //       'country_code': countryCode,
  //       'mobile': phone,
  //       'varification_code': code,
  //       'fcm_token': fcmToken,
  //       'isRegister': isRegister
  //     },
  //   ).then((value) {
  //     print('Response : ${value.data}');
  //     if(isRegister == 0){
  //       emit(CodeSuccessState(response: GenericModel.fromJson(value.data)));
  //     } else {
  //       emit(CodeRegisterSuccessState(response: LoginResponse.fromJson(value.data)));
  //     }
  //   }).catchError((error) {
  //     print("Error : $error");
  //     emit(CodeErrorState(error: error.toString()));
  //   });
  // }
  //
  // void resendVerifyCode({
  //   required String countryCode,
  //   required String phone,
  // }) {
  //   emit(CodeLoadingState());
  //   AppRepository.postRequest(
  //     endPoint: REVERIFICATION_END_POINT,
  //     data: {
  //       'code': canResendCode,
  //       'country_code': countryCode,
  //       'mobile': phone,
  //     },
  //   ).then((value) {
  //     print('Response : ${value.data}');
  //     emit(CodeResendSuccessState(response: GenericModel.fromJson(value.data)));
  //   }).catchError((error) {
  //     print("Error : $error");
  //     emit(CodeErrorState(error: error.toString()));
  //   });
  // }
}
