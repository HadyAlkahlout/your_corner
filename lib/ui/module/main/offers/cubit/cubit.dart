import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'states.dart';

class OffersCubit extends Cubit<OffersStates> {
  OffersCubit() : super(OffersInitialStates());

  static OffersCubit get(context) => BlocProvider.of(context);

  // void getDashboard() {
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
