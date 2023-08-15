import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:your_corner/ui/style/color.dart';

import '../../domain/model/main/model_offer.dart';

class OfferItem extends StatelessWidget {
  OfferItem({super.key, required this.offer});

  OfferModel offer;

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
                  offer.name,
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
              Container(
                height: 30,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: getStatusColor(context, offer.status),
                ),
                child: Center(
                  child: Text(
                    getStatusName(context, offer.status),
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Lato',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
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
              Text(
                AppLocalizations.of(context)!.startDate,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Lato',
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                offer.date,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  color: Colors.black,
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
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          '\$',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Lato',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          offer.totalRevenue,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            color: Colors.black,
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
                    Text(
                      AppLocalizations.of(context)!.totalRevenue,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Lato',
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      offer.bookings,
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
                      AppLocalizations.of(context)!.bookings,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Lato',
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
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
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          '\$',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Lato',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          offer.discountGiven,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            color: Colors.black,
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
                    Text(
                      AppLocalizations.of(context)!.discountGiven,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Lato',
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          offer.effectiveDiscount,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Lato',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        const Text(
                          '%',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black,
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
                    Text(
                      AppLocalizations.of(context)!.effectiveDiscount,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Lato',
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
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
            AppLocalizations.of(context)!.offerDetails,
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
          Row(
            children: [
              Text(
                AppLocalizations.of(context)!.offerApplicable,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Lato',
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                offer.offerApplicable,
                textAlign: TextAlign.start,
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
            height: 8,
          ),
          Row(
            children: [
              Text(
                AppLocalizations.of(context)!.minimumValue,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Lato',
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                offer.minimumOrder,
                textAlign: TextAlign.start,
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
            height: 8,
          ),
          Row(
            children: [
              Text(
                AppLocalizations.of(context)!.paymentMode,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Lato',
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                offer.paymentMood,
                textAlign: TextAlign.start,
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
            height: 8,
          ),
          Visibility(
            visible: offer.status == 0,
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
                    AppLocalizations.of(context)!.stop,
                    textAlign: TextAlign.center,
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
    );
  }

  String getStatusName(BuildContext context, int status) {
    String statusName = '';
    switch (status) {
      case 1:
        {
          statusName = AppLocalizations.of(context)!.active;
        }
        break;
      case 2:
        {
          statusName = AppLocalizations.of(context)!.scheduled;
        }
        break;
      case 3:
        {
          statusName = AppLocalizations.of(context)!.inactive;
        }
        break;
    }
    return statusName;
  }

  MaterialColor getStatusColor(BuildContext context, int status) {
    MaterialColor statusName = Colors.green;
    switch (status) {
      case 1:
        {
          statusName = Colors.green;
        }
        break;
      case 2:
        {
          statusName = Colors.orange;
        }
        break;
      case 3:
        {
          statusName = Colors.red;
        }
        break;
    }
    return statusName;
  }
}
