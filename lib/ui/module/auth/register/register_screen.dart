import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:your_corner/ui/module/auth/code/code_screen.dart';
import 'package:your_corner/ui/style/color.dart';

import 'cubit/cubit.dart';
import 'cubit/state.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  var keyForm = GlobalKey<FormState>();
  var salonNameController = TextEditingController();
  var ownerNameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var addressController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  var countryCode = '965';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterStates>(
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
          RegisterCubit cubit = RegisterCubit.get(context);
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
                AppLocalizations.of(context)!.register,
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
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: HexColor(cardBackgroundColor),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: TextFormField(
                          controller: salonNameController,
                          keyboardType: TextInputType.name,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return AppLocalizations.of(context)!.emptyField;
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: AppLocalizations.of(context)!.salonName,
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
                          controller: ownerNameController,
                          keyboardType: TextInputType.name,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return AppLocalizations.of(context)!.emptyField;
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: AppLocalizations.of(context)!.ownerName,
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
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return AppLocalizations.of(context)!.emptyField;
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: AppLocalizations.of(context)!.email,
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
                              Icons.email_rounded,
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
                          controller: phoneController,
                          keyboardType: TextInputType.phone,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return AppLocalizations.of(context)!.emptyField;
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: '+0000000000',
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
                              Icons.phone_enabled_rounded,
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
                          controller: addressController,
                          keyboardType: TextInputType.text,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return AppLocalizations.of(context)!.emptyField;
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: AppLocalizations.of(context)!.address,
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
                              Icons.location_on_rounded,
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
                              Icons.password_rounded,
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
                          controller: confirmPasswordController,
                          keyboardType: TextInputType.text,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return AppLocalizations.of(context)!.emptyField;
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText:
                                AppLocalizations.of(context)!.confirmPassword,
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
                              Icons.password_rounded,
                              color: HexColor(iconsColor),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 32.0,
                      ),
                      MaterialButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CodeScreen()),
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
                              AppLocalizations.of(context)!.register,
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
                        children: [
                          Checkbox(
                            shape: const ContinuousRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16.0)),
                            ),
                            value: cubit.isCheck,
                            onChanged: (value) {
                              cubit.changeCheckStatus();
                            },
                          ),
                          const SizedBox(
                            width: 2.0,
                          ),
                          Text(
                            AppLocalizations.of(context)!.termsHint,
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.none,
                              fontFamily: 'Lato',
                              fontSize: 14.0,
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
