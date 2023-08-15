import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:your_corner/domain/model/main/model_notification.dart';
import 'states.dart';

class NotificationsCubit extends Cubit<NotificationsStates> {
  NotificationsCubit() : super(NotificationsInitialStates());

  static NotificationsCubit get(context) => BlocProvider.of(context);

  List<NotificationModel> notifications = [];

  void getNotifications() {
    emit(NotificationsLoadingState());
    notifications.add(NotificationModel(
      id: 1,
      title: 'Booking confirmed',
      body: 'Aalia Ali have a hair cut appointment at 10:30 am on Fir, Aug 26 is confirmed.',
      date: '20 min',
      isRead: false,
    ));
    notifications.add(NotificationModel(
      id: 2,
      title: 'Booking Cancelled',
      body: 'Aalia Ali has cancelled the hair cut appointment at 10:30 am on Fir, Aug 26 .',
      date: 'yesterday',
      isRead: true,
    ));
    notifications.add(NotificationModel(
      id: 3,
      title: 'Thanks for the humble behaviour',
      body: 'You have a message form Aalia Ali',
      date: '2 days ago',
      isRead: true,
    ));
    emit(NotificationsSuccessState());
  }

// void getNotifications() {
//   emit(NotificationsLoadingState());
//   AppRepository.getRequest(
//     endPoint: Dashboard_END_POINT,
//   ).then((value) {
//     print('Response : ${value.data}');
//     emit(NotificationsSuccessState());
//   }).catchError((error){
//     print("Error : $error");
//     emit(NotificationsErrorState(error: error.toString()));
//   });
// }
}
