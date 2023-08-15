import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:your_corner/domain/model/main/model_notification.dart';
import 'package:your_corner/ui/style/color.dart';

class NotificationItem extends StatelessWidget {
  NotificationItem({super.key, required this.notification});

  NotificationModel notification;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: notification.isRead
            ? HexColor(cardBackgroundColor)
            : Colors.grey[300],
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  notification.title,
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
                notification.date,
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
          Text(
            notification.body,
            textAlign: TextAlign.start,
            style: const TextStyle(
              color: Colors.grey,
              fontFamily: 'Lato',
              fontSize: 14,
              fontWeight: FontWeight.normal,
                decoration: TextDecoration.none
            ),
          ),
        ],
      ),
    );
  }
}
