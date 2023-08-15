import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:your_corner/ui/module/main/chat/chats_screen.dart';
import 'package:your_corner/ui/module/main/notification/notifications_screen.dart';
import 'package:your_corner/ui/style/color.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      // create: (context) => HomeCubit()..initNotification(context),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {},
        builder: (context, state) {
          HomeCubit cubit = HomeCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: HexColor(primaryColor),
              systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                statusBarIconBrightness: Brightness.light,
                // For Android (light icons)
                statusBarBrightness: Brightness.dark, // For iOS (light icons)
              ),
              leading: const Image(
                image: AssetImage(
                  'assets/images/ic_logo.jpeg',
                ),
                width: 138.0,
              ),
              leadingWidth: 140.0,
              actions: [
                IconButton(
                  onPressed: () {
                    print('Open Notifications Screen');
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationsScreen()),);
                  },
                  icon: SvgPicture.asset('assets/images/ic_notifications.svg'),
                ),
                IconButton(
                  onPressed: () {
                    print('Open Chats Screen');
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatsScreen()),);
                  },
                  icon: SvgPicture.asset('assets/images/ic_chat.svg'),
                ),
              ],
            ),
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: Container(
              width: double.infinity,
              height: 80.0,
              decoration: BoxDecoration(
                color: Colors.black,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 6.0,
                      offset: const Offset(0, 0))
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              if (cubit.currentIndex != 0) {
                                cubit.changeIndex(0);
                              }
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                cubit.currentIndex == 0
                                    ? SvgPicture.asset(
                                        "assets/images/ic_home_active.svg")
                                    : SvgPicture.asset(
                                        "assets/images/ic_home.svg"),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.home,
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: cubit.currentIndex == 0
                                        ? HexColor(accentColor)
                                        : Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat',
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              if (cubit.currentIndex != 1) {
                                cubit.changeIndex(1);
                              }
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                cubit.currentIndex == 1
                                    ? SvgPicture.asset(
                                        "assets/images/ic_offers_active.svg")
                                    : SvgPicture.asset(
                                        "assets/images/ic_offers.svg"),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.offers,
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: cubit.currentIndex == 1
                                        ? HexColor(accentColor)
                                        : Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat',
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              if (cubit.currentIndex != 2) {
                                cubit.changeIndex(2);
                              }
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                cubit.currentIndex == 2
                                    ? SvgPicture.asset(
                                        "assets/images/ic_booking_active.svg")
                                    : SvgPicture.asset(
                                        "assets/images/ic_booking.svg"),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.booking,
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: cubit.currentIndex == 2
                                        ? HexColor(accentColor)
                                        : Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat',
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Expanded(
                  //   child: Column(
                  //     mainAxisSize: MainAxisSize.min,
                  //     crossAxisAlignment: CrossAxisAlignment.center,
                  //     children: [
                  //       Expanded(
                  //         child: InkWell(
                  //           onTap: () {
                  //             if (cubit.currentIndex != 3) {
                  //               cubit.changeIndex(3);
                  //             }
                  //           },
                  //           child: Column(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             children: [
                  //               cubit.currentIndex == 3
                  //                   ? SvgPicture.asset(
                  //                       "assets/images/ic_booking_active.svg")
                  //                   : SvgPicture.asset(
                  //                       "assets/images/ic_booking.svg"),
                  //               const SizedBox(
                  //                 height: 8.0,
                  //               ),
                  //               Text(
                  //                 AppLocalizations.of(context)!.services,
                  //                 style: TextStyle(
                  //                   decoration: TextDecoration.none,
                  //                   color: cubit.currentIndex == 3
                  //                       ? HexColor(accentColor)
                  //                       : Colors.white,
                  //                   fontWeight: FontWeight.bold,
                  //                   fontFamily: 'Montserrat',
                  //                   fontSize: 12.0,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              if (cubit.currentIndex != 4) {
                                cubit.changeIndex(4);
                              }
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                cubit.currentIndex == 4
                                    ? SvgPicture.asset(
                                        "assets/images/ic_account_active.svg")
                                    : SvgPicture.asset(
                                        "assets/images/ic_account.svg"),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.services,
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: cubit.currentIndex == 4
                                        ? HexColor(accentColor)
                                        : Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat',
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
