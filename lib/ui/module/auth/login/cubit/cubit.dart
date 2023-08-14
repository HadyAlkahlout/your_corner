import 'package:flutter_bloc/flutter_bloc.dart';
import 'state.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialStates());

  static LoginCubit get(context) => BlocProvider.of(context);

  bool obscureText = true;

  void changePasswordStatus() {
    obscureText = !obscureText;
    emit(LoginChangePasswordState());
  }

  // void userLogin({
  //   required String phone,
  //   required String countryCode,
  //   required String password,
  //   required String fcmToken,
  // }) {
  //   emit(LoginLoadingState());
  //   AppRepository.postRequest(
  //     endPoint: LOGIN_END_POINT,
  //     data: {
  //       'mobile': phone,
  //       'country_code': countryCode,
  //       'fcm_token': fcmToken,
  //       'password': password,
  //     },
  //   ).then((value) {
  //     print('Response : ${value.data}');
  //     emit(LoginSuccessState(response: LoginResponse.fromJson(value.data)));
  //   }).catchError((error){
  //     print("Error : $error");
  //     emit(LoginErrorState(error: error.toString()));
  //   });
  // }
}
