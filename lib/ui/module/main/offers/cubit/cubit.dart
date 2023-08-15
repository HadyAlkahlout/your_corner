import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:your_corner/domain/model/main/model_offer.dart';
import 'states.dart';

class OffersCubit extends Cubit<OffersStates> {
  OffersCubit() : super(OffersInitialStates());

  static OffersCubit get(context) => BlocProvider.of(context);

  int currentTap = 0;

  void changeTap(int tap) {
    currentTap = tap;
    emit(OffersChangeTapStates());
  }

  int currentSubTap = 0;

  void changeSubTap(int tap) {
    currentSubTap = tap;
    emit(OffersChangeSubTapStates());
  }

  List<OfferModel> allOffers = [];
  List<OfferModel> activeOffers = [];
  List<OfferModel> scheduleOffers = [];
  List<OfferModel> inactiveOffers = [];

  void getOffers() {
    emit(OffersLoadingState());
    activeOffers.add(OfferModel(
      id: 1,
      name: '30% Off up to \$20',
      status: 1,
      date: '4 sep 2022',
      totalRevenue: '2,329',
      bookings: '21',
      discountGiven: '605',
      effectiveDiscount: '26',
      offerApplicable: 'All user on all services.',
      minimumOrder: '\$100',
      paymentMood: 'Online',
    ));
    scheduleOffers.add(OfferModel(
      id: 2,
      name: '30% Off up to \$20',
      status: 2,
      date: '4 sep 2022',
      totalRevenue: '2,329',
      bookings: '21',
      discountGiven: '605',
      effectiveDiscount: '26',
      offerApplicable: 'All user on all services.',
      minimumOrder: '\$100',
      paymentMood: 'Online',
    ));
    inactiveOffers.add(OfferModel(
      id: 3,
      name: '30% Off up to \$20',
      status: 3,
      date: '4 sep 2022',
      totalRevenue: '2,329',
      bookings: '21',
      discountGiven: '605',
      effectiveDiscount: '26',
      offerApplicable: 'All user on all services.',
      minimumOrder: '\$100',
      paymentMood: 'Online',
    ));
    allOffers.addAll(activeOffers);
    allOffers.addAll(scheduleOffers);
    allOffers.addAll(inactiveOffers);
    emit(OffersSuccessState());
  }

// void getOffers() {
//   emit(OffersLoadingState());
//   AppRepository.getRequest(
//     endPoint: Dashboard_END_POINT,
//   ).then((value) {
//     print('Response : ${value.data}');
//     emit(OffersSuccessState());
//   }).catchError((error){
//     print("Error : $error");
//     emit(OffersErrorState(error: error.toString()));
//   });
// }
}
