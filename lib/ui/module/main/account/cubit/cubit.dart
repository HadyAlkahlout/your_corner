import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'states.dart';

class AccountCubit extends Cubit<AccountStates> {
  AccountCubit() : super(AccountInitialStates());

  static AccountCubit get(context) => BlocProvider.of(context);

  // void getAccount() {
  //   emit(DashboardLoadingState());
  //   AppRepository.getRequest(
  //     endPoint: Dashboard_END_POINT,
  //   ).then((value) {
  //     print('Response : ${value.data}');
  //     emit(DashboardSuccessState(response: DashboardResponse.fromJson(value.data)));
  //   }).catchError((error){
  //     print("Error : $error");
  //     emit(DashboardErrorState(error: error.toString()));
  //   });
  // }

}
