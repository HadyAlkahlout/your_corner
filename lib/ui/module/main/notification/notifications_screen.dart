import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:your_corner/ui/component/item_notification.dart';
import 'package:your_corner/ui/style/color.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotificationsCubit()..getNotifications(),
      child: BlocConsumer<NotificationsCubit, NotificationsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          NotificationsCubit cubit = NotificationsCubit.get(context);
          return Scaffold(
            backgroundColor: HexColor(scaffoldBackgroundColor),
            appBar: AppBar(
              backgroundColor: HexColor(scaffoldBackgroundColor),
              systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                statusBarIconBrightness: Brightness.dark,
                // For Android (light icons)
                statusBarBrightness: Brightness.light, // For iOS (light icons)
              ),
              centerTitle: true,
              title: Text(
                AppLocalizations.of(context)!.notifications,
                textAlign: TextAlign.start,
                style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Lato',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none
                ),
              ),
            ),
            body: ListView.separated(
              padding: const EdgeInsets.all(16),
              itemBuilder: (context, index) => NotificationItem(notification: cubit.notifications[index]),
              separatorBuilder: (context, index) => const SizedBox(height: 16,),
              itemCount: cubit.notifications.length,
            ),
          );
        },
      ),
    );
  }
}
