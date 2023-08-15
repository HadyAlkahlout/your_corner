import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:your_corner/ui/component/item_chat.dart';
import 'package:your_corner/ui/style/color.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          AppLocalizations.of(context)!.aboutUs,
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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem in euismod est volutpat. \n\nPellentesque venenatis amet sit turpis magna mi. Sem diam quis posuere suspendisse leo cursus. Felis molestie dui tellus urna, eu. \n\nId eget in morbi vitae malesuada ullamcorper eget.Sagittis pharetra ultricies sit nulla purus sit in auctor ipsum. Laoreet faucibus aenean nisi a cum interdum et vel. In ultricies et nisl parturient et auctor.Aculis vivamus lectus turpis tincidunt vestibulum, vitae, integer proin vitae. Urna malesuada ac vivamus ornare a pharetra, aliquam orci fringilla. \n\nSuspendisse gravida erat euismod neque.A vel pharetra orci in. A mus justo, mattis sed lacinia tempor. \n\nSenectus morbi lectus cras amet vitae. Ullamcorper nunc sit erat scelerisque consequat urna, nec aenean.Nisl consequat justo rhoncus dignissim mi id. Mauris scelerisque pellentesque mollis nibh dui arcu tellus sapien. Eu morbi in sit amet mi nisl vestibulum Augue.',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Lato',
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
