import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:your_corner/ui/layout/home/home_layout.dart';
import 'package:your_corner/ui/module/auth/code/code_screen.dart';
import 'package:your_corner/ui/module/auth/register/register_screen.dart';
import 'package:your_corner/ui/style/color.dart';

import 'cubit/cubit.dart';
import 'cubit/state.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  var keyForm = GlobalKey<FormState>();
  var loginController = TextEditingController();
  var passwordController = TextEditingController();

  var countryCode = '965';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginStates>(
        listener: (context, state) {
          // if (state is RegisterErrorState) {
          //   ScaffoldMessenger.of(context).showSnackBar(
          //     SnackBar(
          //       content: Text(
          //         state.error,
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
          // else if (state is RegisterSuccessState) {
          //   if (state.response.status!) {
          //     ScaffoldMessenger.of(context).showSnackBar(
          //       SnackBar(
          //         content: Text(
          //           state.response.message!,
          //           style: const TextStyle(
          //             color: Colors.white,
          //             fontWeight: FontWeight.normal,
          //             fontSize: 14,
          //             fontFamily: 'Montserrat',
          //           ),
          //         ),
          //       ),
          //     );
          //     CacheHelper.setData(key: PREF_NOTIFY_STATE_KEY, value: true);
          //     Navigator.pushAndRemoveUntil(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => CodeScreen(
          //             countryCode: countryCode,
          //             phone: numberController.text,
          //             isRegister: true,
          //             isReactivate: false,
          //           ),
          //         ), (r) {
          //       return false;
          //     });
          //   } else {
          //     if (state.response.code! == 403) {
          //       Navigator.pushAndRemoveUntil(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => CodeScreen(
          //             countryCode: countryCode,
          //             phone: numberController.text,
          //             isReactivate: true,
          //           ),
          //         ),
          //             (route) => false,
          //       );
          //     } else {
          //       ScaffoldMessenger.of(context).showSnackBar(
          //         SnackBar(
          //           content: Text(
          //             state.response.message!,
          //             style: const TextStyle(
          //               color: Colors.red,
          //               fontWeight: FontWeight.normal,
          //               fontSize: 14,
          //               fontFamily: 'Montserrat',
          //             ),
          //           ),
          //         ),
          //       );
          //     }
          //   }
          // }
        },
        builder: (context, state) {
          LoginCubit cubit = LoginCubit.get(context);
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
                AppLocalizations.of(context)!.login,
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
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Form(
                  key: keyForm,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 46.0,
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: HexColor(cardBackgroundColor),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: TextFormField(
                          controller: loginController,
                          keyboardType: TextInputType.text,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return AppLocalizations.of(context)!.emptyField;
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: AppLocalizations.of(context)!.loginField,
                            labelStyle: const TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Lato',
                              fontSize: 12.0,
                            ),
                            hintStyle: TextStyle(
                              color: HexColor(hintColor),
                              fontFamily: 'Lato',
                            ),
                            prefixIcon: Icon(
                              Icons.person,
                              color: HexColor(iconsColor),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: HexColor(cardBackgroundColor),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: TextFormField(
                          controller: passwordController,
                          keyboardType: TextInputType.text,
                          obscureText: cubit.obscureText,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return AppLocalizations.of(context)!.emptyField;
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: AppLocalizations.of(context)!.password,
                            labelStyle: const TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Lato',
                              fontSize: 12.0,
                            ),
                            hintStyle: TextStyle(
                              color: HexColor(hintColor),
                              fontFamily: 'Lato',
                            ),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: HexColor(iconsColor),
                            ),
                            suffixIcon: IconButton(
                              splashColor: Colors.transparent,
                              icon: cubit.obscureText
                                  ? Icon(
                                      Icons.visibility,
                                      color: HexColor(iconsColor),
                                    )
                                  : Icon(
                                      Icons.visibility_off,
                                      color: HexColor(iconsColor),
                                    ),
                              onPressed: () {
                                cubit.changePasswordStatus();
                              },
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            AppLocalizations.of(context)!.forgetPassword,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                              fontFamily: 'Lato',
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
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
                              AppLocalizations.of(context)!.login,
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
                        height: 16,
                      ),
                      Text(
                        AppLocalizations.of(context)!.or,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'Lato',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              print('Facebook Login');
                            },
                            child: SvgPicture.asset(
                                'assets/images/ic_facebook.svg'),
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          InkWell(
                            onTap: () {
                              print('Google Login');
                            },
                            child:
                                SvgPicture.asset('assets/images/ic_google.svg'),
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          InkWell(
                            onTap: () {
                              print('Apple Login');
                            },
                            child:
                                SvgPicture.asset('assets/images/ic_apple.svg'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.createAccount,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.none,
                              fontFamily: 'Lato',
                              fontSize: 14.0,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterScreen()),
                              );
                            },
                            child: Text(
                              AppLocalizations.of(context)!.register,
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
