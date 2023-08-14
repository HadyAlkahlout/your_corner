import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:your_corner/util/notification_handler.dart';
import 'data/local/cache_helper.dart';
import 'data/remote/dio_helper.dart';
import 'ui/module/splash/splash_screen.dart';
import 'ui/style/theme.dart';
import 'util/bloc_observer.dart';
import 'app/cubit/cubit.dart';
import 'app/cubit/state.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp();
  // String? fcmToken = await FirebaseMessaging.instance.getToken();
  // await NotificationHandler().initNotification();
  // print('FCM Token : $fcmToken');

  Bloc.observer = MyBlocObserver();
  await CacheHelper.init()
      .then((value) {
    DioHelper.init();
  });

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit()..getAppLang(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          AppCubit cubit = AppCubit.get(context);
          return MaterialApp(
            title: 'Your Corner',
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en'), // English
              Locale('ar'), // Arabic
            ],
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: ThemeMode.light,
            locale: Locale(cubit.lang),
            home: const SplashScreen(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}