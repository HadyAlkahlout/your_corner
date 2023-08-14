import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:your_corner/util/constants.dart';
import 'package:your_corner/util/network_handeling.dart';
import '../../../data/local/cache_helper.dart';
import '../../style/color.dart';
import '../welcome/welcome_screen.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Map _source = {ConnectivityResult.none: false};
  final NetworkConnectivity _networkConnectivity = NetworkConnectivity.instance;
  String string = '';

  bool isInternetActive = false;
  bool isCheck = false;


  StreamSubscription? _sub;

  @override
  void initState() {
    super.initState();
    _networkConnectivity.initialise();
    _networkConnectivity.myStream.listen((source) {
      _source = source;
      print('source $_source');
      // 1.
      switch (_source.keys.toList()[0]) {
        case ConnectivityResult.mobile:
          string =
              _source.values.toList()[0] ? 'Mobile: Online' : 'Mobile: Offline';
          print(string);
          isInternetActive = _source.values.toList()[0] ? true : false;
          break;
        case ConnectivityResult.wifi:
          string =
              _source.values.toList()[0] ? 'WiFi: Online' : 'WiFi: Offline';
          print(string);
          isInternetActive = _source.values.toList()[0] ? true : false;
          break;
        case ConnectivityResult.none:
        default:
          string = 'Offline';
          print(string);
          isInternetActive = false;
      }
      // 2.
      setState(() {
        if (!isCheck) {
          isCheck = true;
          if (isInternetActive) {
            Future.delayed(const Duration(seconds: 4), () {
              if (CacheHelper.getBoolean(key: PREF_IS_FIRST_ENTER_KEY) == null) {
                // CacheHelper.setData(key: PREF_IS_FIRST_ENTER_KEY, value: false)
                //     .then((value) {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WelcomeScreen()),
                    (r) {
                      return false;
                    },
                  );
                // });
              }
              // else {
              //   Navigator.pushAndRemoveUntil(
              //     context,
              //     CacheHelper.getString(key: PREF_TOKEN_KEY) != null
              //         ? MaterialPageRoute(
              //             builder: (context) => const HomeLayout())
              //         : MaterialPageRoute(builder: (context) => LoginScreen()),
              //     (r) {
              //       return false;
              //     },
              //   );
              // }
            });
          } else {
            isCheck = false;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  AppLocalizations.of(context)!.noInternet,
                  style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            );
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(scaffoldBackgroundColor),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0.0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
            // For Android (light icons)
            statusBarBrightness:
                Brightness.light, // For iOS (light icons)
          ),
        ),
      ),
      body: const Center(
        child: Image(
          image: AssetImage(
            'assets/images/ic_logo.jpeg',
          ),
          width: 250,
          height: 350,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _networkConnectivity.disposeStream();
    super.dispose();
  }
}
