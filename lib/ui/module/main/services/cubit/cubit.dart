import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'states.dart';

class ServicesCubit extends Cubit<ServicesStates> {
  ServicesCubit() : super(ServicesInitialStates());

  static ServicesCubit get(context) => BlocProvider.of(context);

  // void getServices() {
  //   emit(ServicesLoadingState());
  //   AppRepository.getRequest(
  //     endPoint: Dashboard_END_POINT,
  //   ).then((value) {
  //     print('Response : ${value.data}');
  //     emit(ServicesSuccessState(response: ServicesResponse.fromJson(value.data)));
  //   }).catchError((error){
  //     print("Error : $error");
  //     emit(ServicesErrorState(error: error.toString()));
  //   });
  // }

}
