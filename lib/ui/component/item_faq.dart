import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../style/color.dart';

class FAQItem extends StatefulWidget {
  const FAQItem({Key? key,}) : super(key: key);

  @override
  State<FAQItem> createState() => _FAQItemState();
}

class _FAQItemState extends State<FAQItem> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isOpen = !isOpen;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: HexColor(scaffoldBackgroundColor),
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'How can I book appointment ?',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isOpen = !isOpen;
                      });
                    },
                    icon: Icon(isOpen
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down),
                  ),
                ],
              ),
            ),
          ),
        ),
        Visibility(
          visible: isOpen,
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 8.0,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: HexColor(cardBackgroundColor),
                    borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Enter the location on the "Location Bar where you want to avail the service. You can also use the Auto Locate feature to set the location.',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.black.withOpacity(0.7),
                        fontFamily: 'Montserrat',
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
