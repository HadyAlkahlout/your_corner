import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:your_corner/ui/component/item_offer.dart';
import 'package:your_corner/ui/style/color.dart';

import '../../../../domain/model/main/model_offer.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OffersCubit()..getOffers(),
      child: BlocConsumer<OffersCubit, OffersStates>(
        listener: (context, state) {},
        builder: (context, state) {
          OffersCubit cubit = OffersCubit.get(context);
          return Container(
            color: HexColor(scaffoldBackgroundColor),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            cubit.changeTap(0);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Text(
                                    AppLocalizations.of(context)!.createOffers,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: cubit.currentTap == 0
                                          ? Colors.black
                                          : Colors.grey,
                                      fontFamily: 'Lato',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                color: cubit.currentTap == 0
                                    ? Colors.black
                                    : Colors.grey,
                                height: 2,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            cubit.changeTap(1);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Text(
                                    AppLocalizations.of(context)!.trackOffers,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: cubit.currentTap == 1
                                          ? Colors.black
                                          : Colors.grey,
                                      fontFamily: 'Lato',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                color: cubit.currentTap == 1
                                    ? Colors.black
                                    : Colors.grey,
                                height: 2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Visibility(
                  visible: cubit.currentTap == 1,
                  child: Expanded(
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 8,
                              ),
                              InkWell(
                                onTap: () {
                                  cubit.changeSubTap(0);
                                },
                                child: Container(
                                  height: 30,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: cubit.currentSubTap == 0
                                          ? Colors.black
                                          : Colors.grey,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(24),
                                    color: HexColor(cardBackgroundColor),
                                  ),
                                  child: Center(
                                    child: Text(
                                      AppLocalizations.of(context)!.all,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: cubit.currentSubTap == 0
                                            ? Colors.black
                                            : Colors.grey,
                                        fontFamily: 'Lato',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              InkWell(
                                onTap: () {
                                  cubit.changeSubTap(1);
                                },
                                child: Container(
                                  height: 30,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: cubit.currentSubTap == 1
                                          ? Colors.black
                                          : Colors.grey,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(24),
                                    color: HexColor(cardBackgroundColor),
                                  ),
                                  child: Center(
                                    child: Text(
                                      AppLocalizations.of(context)!.active,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: cubit.currentSubTap == 1
                                            ? Colors.black
                                            : Colors.grey,
                                        fontFamily: 'Lato',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              InkWell(
                                onTap: () {
                                  cubit.changeSubTap(2);
                                },
                                child: Container(
                                  height: 30,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: cubit.currentSubTap == 2
                                          ? Colors.black
                                          : Colors.grey,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(24),
                                    color: HexColor(cardBackgroundColor),
                                  ),
                                  child: Center(
                                    child: Text(
                                      AppLocalizations.of(context)!.scheduled,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: cubit.currentSubTap == 2
                                            ? Colors.black
                                            : Colors.grey,
                                        fontFamily: 'Lato',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              InkWell(
                                onTap: () {
                                  cubit.changeSubTap(3);
                                },
                                child: Container(
                                  height: 30,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: cubit.currentSubTap == 3
                                          ? Colors.black
                                          : Colors.grey,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(24),
                                    color: HexColor(cardBackgroundColor),
                                  ),
                                  child: Center(
                                    child: Text(
                                      AppLocalizations.of(context)!.inactive,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: cubit.currentSubTap == 3
                                            ? Colors.black
                                            : Colors.grey,
                                        fontFamily: 'Lato',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: ListView.separated(
                              itemBuilder: (context, index) => OfferItem(offer: getSelectedList(cubit)[index]),
                              separatorBuilder: (context, index) => const SizedBox(
                                height: 16,
                              ),
                              itemCount: getSelectedList(cubit).length,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: cubit.currentTap == 0,
                  child: SingleChildScrollView(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppLocalizations.of(context)!
                                .recommendedOffers,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              color: Colors.black,
                              fontFamily: 'Lato',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsetsDirectional.only(
                              top: 16,
                              start: 16,
                              end: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.teal[100],
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        '30% Off up to \$20',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      const Text(
                                        'Grow your business with an offer',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Container(
                                        padding: const EdgeInsetsDirectional.symmetric(
                                          horizontal: 12,
                                          vertical: 8,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.teal[600],
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .activateNow,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Lato',
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SvgPicture.asset('assets/images/ic_offer.svg'),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsetsDirectional.all(16),
                                  decoration: BoxDecoration(
                                    color: Colors.green[300],
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                       Text(
                                        '10% Off',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                       SizedBox(
                                        height: 8,
                                      ),
                                       Text(
                                        'Upto \$15',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsetsDirectional.all(16),
                                  decoration: BoxDecoration(
                                    color: Colors.teal[300],
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '20% Off',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        'Upto \$20',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
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
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.purple[300],
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Column(
                                          children: [
                                            Text(
                                             '30% Off',
                                             textAlign: TextAlign.start,
                                             style: TextStyle(
                                               color: Colors.black,
                                               fontFamily: 'Lato',
                                               fontSize: 16,
                                               fontWeight: FontWeight.bold,
                                             ),
                                        ),
                                            SizedBox(
                                             height: 8,
                                        ),
                                            Text(
                                             'Upto \$25',
                                             textAlign: TextAlign.start,
                                             style: TextStyle(
                                               color: Colors.black,
                                               fontFamily: 'Lato',
                                               fontSize: 14,
                                               fontWeight: FontWeight.normal,
                                             ),
                                        ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        padding: const EdgeInsetsDirectional.all(4),
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.4),
                                          borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(16),
                                              bottomRight: Radius.circular(16),
                                          ),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'New users only',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Lato',
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.yellow[300],
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              '40% Off',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Lato',
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              'Upto \$40',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Lato',
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        padding: const EdgeInsetsDirectional.all(4),
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.4),
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(16),
                                            bottomRight: Radius.circular(16),
                                          ),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'New users only',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Lato',
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Text(
                            AppLocalizations.of(context)!
                                .customerOffers,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              color: Colors.black,
                              fontFamily: 'Lato',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsetsDirectional.only(
                              top: 16,
                              start: 16,
                              end: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Build your offer',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      const Text(
                                        'Set your offer that works best for your business',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Container(
                                        padding: const EdgeInsetsDirectional.symmetric(
                                          horizontal: 12,
                                          vertical: 8,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .createNow,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Lato',
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SvgPicture.asset('assets/images/ic_customer_offer.svg'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).padding.bottom),
              ],
            ),
          );
        },
      ),
    );
  }

  List<OfferModel> getSelectedList(OffersCubit cubit) {
    switch (cubit.currentSubTap) {
      case 0:
        {
          return cubit.allOffers;
        }
      case 1:
        {
          return cubit.activeOffers;
        }
      case 2:
        {
          return cubit.scheduleOffers;
        }
      case 3:
        {
          return cubit.inactiveOffers;
        }
    }
    return cubit.allOffers;
  }

}
