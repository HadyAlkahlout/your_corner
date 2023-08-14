import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:your_corner/ui/module/main/account/account_screen.dart';
import 'package:your_corner/ui/module/main/booking/booking_screen.dart';
import 'package:your_corner/ui/module/main/dashboard/dashboard_screen.dart';
import 'package:your_corner/ui/module/main/offers/offers_screen.dart';
import 'package:your_corner/ui/module/main/services/services_screen.dart';
import 'states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialStates());

  static HomeCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> screens = [
    DashboardScreen(),
    OffersScreen(),
    BookingScreen(),
    ServicesScreen(),
    AccountScreen()
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(HomeChangeBottomNavBarState());
  }

  // void initNotification(BuildContext context) {
  //   NotificationHandler.init();
  //   NotificationHandler.requestIOSPermissions();
  //   FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  //     RemoteNotification? notification = message.notification;
  //
  //
  //
  //     if (notification != null) {
  //       if (notification.title != null) {
  //         NotificationHandler.showNotification(
  //           id: notification.hashCode,
  //           title: notification.title ?? "",
  //           body: notification.body ?? "",
  //           urlImage: notification.android == null
  //               ? null
  //               : notification.android!.imageUrl,
  //           // payload: 'mohammed',
  //         );
  //       }
  //     }
  //
  //
  //
  //   });
  // }

}
