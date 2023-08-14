import 'package:flutter_bloc/flutter_bloc.dart';
import 'state.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitialStates());

  static RegisterCubit get(context) => BlocProvider.of(context);

  bool isCheck = false;

  void changeCheckStatus() {
    isCheck = !isCheck;
    emit(RegisterChangeCheckState());
  }

  // void userRegister({
  //   required String name,
  //   required String countryCode,
  //   required String phone,
  //   required String password,
  // }) {
  //   emit(RegisterLoadingState());
  //   AppRepository.postRequest(
  //     endPoint: REGISTER_END_POINT,
  //     data: {
  //       'name': name,
  //       'country_code': countryCode,
  //       'mobile': phone,
  //       'password': password,
  //     },
  //   ).then((value) {
  //     print('Response : ${value.data}');
  //     emit(RegisterSuccessState(response: GenericModel.fromJson(value.data)));
  //   }).catchError((error){
  //     print("Error : $error");
  //     emit(RegisterErrorState(error: error.toString()));
  //   });
  // }
}
