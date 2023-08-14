import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:your_corner/domain/model/main/model_book.dart';
import 'package:your_corner/ui/component/item_service.dart';
import 'package:your_corner/ui/style/color.dart';

class BookItem extends StatelessWidget {
  BookItem({super.key, required this.book});

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
                child: Text(
                  book.name,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Lato',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
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
              Expanded(
                child: Text(
                  AppLocalizations.of(context)!.bookingID,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Lato',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  book.bookId,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Lato',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  AppLocalizations.of(context)!.dateTime,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Lato',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  '${book.date} ${book.time}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Lato',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
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
          Text(
            AppLocalizations.of(context)!.serviceDetails,
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
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => ServiceItem(service: book.services[index]),
            separatorBuilder: (context, index) => const SizedBox(height: 8,),
            itemCount: book.services.length,
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
              Expanded(
                child: Text(
                  AppLocalizations.of(context)!.total,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Lato',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Row(
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
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  AppLocalizations.of(context)!.paymentMood,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Lato',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
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
          const SizedBox(
            height: 16,
          ),
          Visibility(
            visible: book.status == 0,
            child: Column(
              children: [
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {},
                        padding: EdgeInsets.zero,
                        child: Container(
                          decoration: BoxDecoration(
                            color: HexColor(cardBackgroundColor),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          height: 40,
                          child: Center(
                            child: Text(
                              AppLocalizations.of(context)!.completed,
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                color: Colors.black,
                                fontFamily: 'Lato',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {},
                        padding: EdgeInsets.zero,
                        child: Container(
                          decoration: BoxDecoration(
                            color: HexColor(cardBackgroundColor),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          height: 40,
                          child: Center(
                            child: Text(
                              AppLocalizations.of(context)!.noShow,
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                color: Colors.black,
                                fontFamily: 'Lato',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {},
                        padding: EdgeInsets.zero,
                        child: Container(
                          decoration: BoxDecoration(
                            color: HexColor(cardBackgroundColor),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: Colors.red,
                              width: 1,
                            ),
                          ),
                          height: 40,
                          child: Center(
                            child: Text(
                              AppLocalizations.of(context)!.reject,
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                color: Colors.red,
                                fontFamily: 'Lato',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
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
          Visibility(
            visible: book.status == 1,
            child: Column(
              children: [
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {},
                        padding: EdgeInsets.zero,
                        child: Container(
                          decoration: BoxDecoration(
                            color: HexColor(cardBackgroundColor),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: Colors.green,
                              width: 1,
                            ),
                          ),
                          height: 40,
                          child: Center(
                            child: Text(
                              AppLocalizations.of(context)!.accept,
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                color: Colors.green,
                                fontFamily: 'Lato',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {},
                        padding: EdgeInsets.zero,
                        child: Container(
                          decoration: BoxDecoration(
                            color: HexColor(cardBackgroundColor),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: Colors.red,
                              width: 1,
                            ),
                          ),
                          height: 40,
                          child: Center(
                            child: Text(
                              AppLocalizations.of(context)!.reject,
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                color: Colors.red,
                                fontFamily: 'Lato',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
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
