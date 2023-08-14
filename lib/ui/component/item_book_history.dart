import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:your_corner/domain/model/main/model_book.dart';
import 'package:your_corner/ui/component/item_service.dart';
import 'package:your_corner/ui/style/color.dart';

class BookHistoryItem extends StatelessWidget {
  BookHistoryItem({super.key, required this.book});

  BookModel book;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: HexColor(cardBackgroundColor),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.bookingID,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'Lato',
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      book.bookId,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'Lato',
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                getStatusName(context, book.status),
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: getStatusColor(context, book.status),
                  fontFamily: 'Lato',
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Divider(
            color: Colors.grey[400],
            height: 20,
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              const CircleAvatar(
                radius: 48,
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
                    Text(
                      book.name,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'Lato',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      '${book.date} ${book.time}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'Lato',
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              const Text(
                                '\$',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Lato',
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Text(
                                book.total,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Lato',
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          book.paymentMood,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Lato',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  String getStatusName(BuildContext context, int status) {
    String statusName = '';
    switch (status) {
      case 0:
        {
          statusName = AppLocalizations.of(context)!.confirmed;
        }
        break;
      case 1:
        {
          statusName = AppLocalizations.of(context)!.pending;
        }
        break;
      case 2:
        {
          statusName = AppLocalizations.of(context)!.completed;
        }
        break;
      case 3:
        {
          statusName = AppLocalizations.of(context)!.rejected;
        }
        break;
      case 4:
        {
          statusName = AppLocalizations.of(context)!.cancelled;
        }
        break;
    }
    return statusName;
  }

  MaterialColor getStatusColor(BuildContext context, int status) {
    MaterialColor statusName = Colors.red;
    switch (status) {
      case 0:
        {
          statusName = Colors.green;
        }
        break;
      case 1:
        {
          statusName = Colors.yellow;
        }
        break;
      case 2:
        {
          statusName = Colors.green;
        }
        break;
      case 3:
        {
          statusName = Colors.orange;
        }
        break;
      case 4:
        {
          statusName = Colors.red;
        }
        break;
    }
    return statusName;
  }
}
