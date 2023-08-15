import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:your_corner/domain/model/main/model_chat.dart';
import 'package:your_corner/domain/model/main/model_notification.dart';
import 'package:your_corner/ui/style/color.dart';

class ChatItem extends StatelessWidget {
  ChatItem({super.key, required this.chat});

  ChatModel chat;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: HexColor(cardBackgroundColor),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 32,
            backgroundImage: AssetImage(
              'assets/images/ic_profile.jpeg',
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        chat.name,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'Lato',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      chat.date,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Lato',
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                          decoration: TextDecoration.none
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        chat.message,
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Lato',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            decoration: TextDecoration.none
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Visibility(
                      visible: chat.messages > 0,
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: HexColor(primaryColor),
                        child: Center(
                          child: Text(
                            chat.messages.toString(),
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'Lato',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.none
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
