import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:your_corner/ui/component/item_faq.dart';
import 'package:your_corner/ui/style/color.dart';

class FAQsScreen extends StatelessWidget {
  const FAQsScreen({super.key});

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
          AppLocalizations.of(context)!.fags,
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
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        itemBuilder:
            (BuildContext context, int index) =>
            const FAQItem(),
        separatorBuilder:
            (BuildContext context, int index) =>
        const SizedBox(height: 8.0),
        itemCount: 8,
      ),
    );
  }
}
