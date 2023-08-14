import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:your_corner/ui/layout/home/home_layout.dart';
import 'package:your_corner/ui/module/auth/login/login_screen.dart';
import 'package:your_corner/ui/style/color.dart';
import '../../../../../data/local/cache_helper.dart';
import '../../../../../data/remote/dio_helper.dart';
import 'cubit/cubit.dart';
import 'cubit/state.dart';

class CodeScreen extends StatelessWidget {
  CodeScreen({
    Key? key,
  }) : super(key: key);

  var keyForm = GlobalKey<FormState>();
  var pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CodeCubit(),
      child: BlocConsumer<CodeCubit, CodeStates>(
        listener: (context, state) {
          // if (state is CodeErrorState) {
          //   ScaffoldMessenger.of(context).showSnackBar(
          //     SnackBar(
          //       content: Text(
          //         state.error,
          //         style: const TextStyle(
          //           color: Colors.red,
          //           fontWeight: FontWeight.normal,
          //           fontSize: 14,
          //           fontFamily: 'Montserrat',
          //         ),
          //       ),
          //     ),
          //   );
          // }
          // else if (state is CodeSuccessState) {
          //   if (state.response.status!) {
          //     Navigator.pushAndRemoveUntil(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) => ResetPasswordScreen(
          //                 countryCode: countryCode,
          //                 phone: phone,
          //               )),
          //       (r) {
          //         return false;
          //       },
          //     );
          //   } else {
          //     ScaffoldMessenger.of(context).showSnackBar(
          //       SnackBar(
          //         content: Text(
          //           state.response.message!,
          //           style: const TextStyle(
          //             color: Colors.red,
          //             fontWeight: FontWeight.normal,
          //             fontSize: 14,
          //             fontFamily: 'Montserrat',
          //           ),
          //         ),
          //       ),
          //     );
          //   }
          // }
          // else if (state is CodeRegisterSuccessState) {
          //   if (state.response.status!) {
          //     CacheHelper.setData(
          //       key: PREF_TOKEN_KEY,
          //       value: state.response.data!.token!,
          //     ).then((value) {
          //       CacheHelper.setData(
          //           key: PREF_NAME_KEY, value: state.response.data!.name!);
          //       CacheHelper.setData(
          //           key: PREF_MOBILE_KEY, value: state.response.data!.mobile!);
          //       CacheHelper.setData(
          //           key: PREF_ID_KEY, value: state.response.data!.id!);
          //       DioHelper.init();
          //       Navigator.pushAndRemoveUntil(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => const HomeLayout(),
          //         ),
          //         (r) {
          //           return false;
          //         },
          //       );
          //     });
          //   } else {
          //     ScaffoldMessenger.of(context).showSnackBar(
          //       SnackBar(
          //         content: Text(
          //           state.response.message!,
          //           style: const TextStyle(
          //             color: Colors.red,
          //             fontWeight: FontWeight.normal,
          //             fontSize: 14,
          //             fontFamily: 'Montserrat',
          //           ),
          //         ),
          //       ),
          //     );
          //   }
          // }
          // else if (state is CodeResendSuccessState) {
          //   ScaffoldMessenger.of(context).showSnackBar(
          //     SnackBar(
          //       content: Text(
          //         state.response.message!,
          //         style: const TextStyle(
          //           color: Colors.white,
          //           fontWeight: FontWeight.normal,
          //           fontSize: 14,
          //           fontFamily: 'Montserrat',
          //         ),
          //       ),
          //     ),
          //   );
          // }
        },
        builder: (context, state) {
          CodeCubit cubit = CodeCubit.get(context);
          return Scaffold(
            backgroundColor: HexColor(scaffoldBackgroundColor),
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                statusBarIconBrightness: Brightness.dark,
                // For Android (light icons)
                statusBarBrightness: Brightness.light, // For iOS (light icons)
              ),
              title: Text(
                AppLocalizations.of(context)!.otpVerification,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  fontFamily: 'Lato',
                  fontSize: 18.0,
                ),
              ),
              centerTitle: true,
            ),
            body: Form(
              key: keyForm,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 54,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          AppLocalizations.of(context)!.verificationHint,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            decoration: TextDecoration.none,
                            fontFamily: 'Lato',
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 46.0,
                      ),
                      Center(
                        child: SizedBox(
                          width: 335.0,
                          child: PinCodeTextField(
                            appContext: context,
                            length: 4,
                            obscureText: false,
                            blinkWhenObscuring: true,
                            animationType: AnimationType.fade,
                            validator: (v) {
                              if (v!.isEmpty) {
                                return "Enter the code!!";
                              } else {
                                return null;
                              }
                            },
                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.underline,
                              borderRadius: BorderRadius.circular(10),
                              fieldHeight: 59,
                              fieldWidth: 59,
                              activeColor: Colors.black,
                              selectedColor: Colors.black,
                              disabledColor: HexColor(scaffoldBackgroundColor),
                              inactiveColor: Colors.black,
                              activeFillColor:
                                  HexColor(scaffoldBackgroundColor),
                              inactiveFillColor:
                                  HexColor(scaffoldBackgroundColor),
                              selectedFillColor:
                                  HexColor(scaffoldBackgroundColor),
                              errorBorderColor:
                                  HexColor(scaffoldBackgroundColor),
                            ),
                            cursorColor: Colors.black,
                            animationDuration:
                                const Duration(milliseconds: 300),
                            enableActiveFill: true,
                            controller: pinController,
                            keyboardType: TextInputType.number,
                            onCompleted: (v) {
                              print("Completed: $v");
                            },
                            onChanged: (value) {
                              print(value);
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                        ),
                        child: Row(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TimerCountdown(
                                  format: CountDownTimerFormat.minutesSeconds,
                                  colonsTextStyle:
                                      const TextStyle(color: Colors.grey),
                                  timeTextStyle:
                                      const TextStyle(color: Colors.grey),
                                  enableDescriptions: false,
                                  endTime: cubit.duration,
                                  onEnd: () {
                                    print("Timer finished");
                                    cubit.changeResendState();
                                  },
                                ),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.sec,
                                  style: const TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.grey,
                                    fontFamily: 'Montserrat',
                                    fontSize: 14.0,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                AppLocalizations.of(context)!.resend,
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Lato',
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      MaterialButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeLayout(),
                            ),
                                (route) => false,
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 55.0,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Center(
                            child: Text(
                              AppLocalizations.of(context)!.submit,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'Lato',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.haveAccount,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.black,
                              fontFamily: 'Lato',
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => LoginScreen()),
                              );
                            },
                            child: Text(
                              AppLocalizations.of(context)!.login,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                                fontFamily: 'Lato',
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
