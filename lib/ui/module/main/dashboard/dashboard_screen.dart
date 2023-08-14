import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:your_corner/ui/style/color.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardCubit(),
      child: BlocConsumer<DashboardCubit, DashboardStates>(
        listener: (context, state) {},
        builder: (context, state) {
          DashboardCubit cubit = DashboardCubit.get(context);
          return SingleChildScrollView(
            child: Container(
              color: HexColor(scaffoldBackgroundColor),
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    AppLocalizations.of(context)!.businessInsights,
                    style: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'Lato',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              color: HexColor(cardBackgroundColor),
                              borderRadius: BorderRadius.circular(16.0)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppLocalizations.of(context)!.totalRevenue,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Lato',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                AppLocalizations.of(context)!.yourEarning,
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Lato',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 16.0,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    '\$',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontFamily: 'Lato',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4.0,
                                  ),
                                  Text(
                                    '2000',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontFamily: 'Lato',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              color: HexColor(cardBackgroundColor),
                              borderRadius: BorderRadius.circular(16.0)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppLocalizations.of(context)!.totalService,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Lato',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                AppLocalizations.of(context)!.yourListedServices,
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Lato',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 16.0,
                              ),
                              const Text(
                                '15',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Lato',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              color: HexColor(cardBackgroundColor),
                              borderRadius: BorderRadius.circular(16.0)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppLocalizations.of(context)!.totalBookings,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Lato',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                AppLocalizations.of(context)!.yourAllBookings,
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Lato',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 16.0,
                              ),
                              const Text(
                                '30',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Lato',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              color: HexColor(cardBackgroundColor),
                              borderRadius: BorderRadius.circular(16.0)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppLocalizations.of(context)!.yourRatings,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Lato',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                AppLocalizations.of(context)!.yourReviews,
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Lato',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 16.0,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    '4.3',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Lato',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '/',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Lato',
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '5',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Lato',
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          AppLocalizations.of(context)!.todayBookings,
                          style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Lato',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          AppLocalizations.of(context)!.seeMore,
                          style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Lato',
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: HexColor('FFF8D6'),
                        borderRadius: BorderRadius.circular(16.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.today,
                          style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Lato',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        const Row(
                          children: [
                            Text(
                              '\$',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Lato',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              '344',
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
                          height: 8.0,
                        ),
                        Row(
                          children: [
                            const Text(
                              '10',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Lato',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              AppLocalizations.of(context)!.bookings,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Lato',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Divider(
                          height: 1,
                          color: HexColor('#F3E8AB'),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        AppLocalizations.of(context)!.thisWeek,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8.0,
                                      ),
                                      const Text(
                                        '22-28 Aug',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        '\$',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4.0,
                                      ),
                                      Text(
                                        '588',
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
                                    height: 8.0,
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        '22',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'Lato',
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8.0,
                                      ),
                                      Text(
                                        AppLocalizations.of(context)!.bookings,
                                        style: const TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'Lato',
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Container(
                              height: 80,
                              width: 1,
                              color: HexColor('#F3E8AB'),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        AppLocalizations.of(context)!.thisMonth,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8.0,
                                      ),
                                      const Text(
                                        '01-31 Aug',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        '\$',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4.0,
                                      ),
                                      Text(
                                        '1688',
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
                                    height: 8.0,
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        '34',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'Lato',
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8.0,
                                      ),
                                      Text(
                                        AppLocalizations.of(context)!.bookings,
                                        style: const TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'Lato',
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          AppLocalizations.of(context)!.bookingsCompleted,
                          style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Lato',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          AppLocalizations.of(context)!.seeMore,
                          style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Lato',
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: HexColor('#D5FFE1'),
                        borderRadius: BorderRadius.circular(16.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.today,
                          style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Lato',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        const Row(
                          children: [
                            Text(
                              '\$',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Lato',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              '344',
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
                          height: 8.0,
                        ),
                        Row(
                          children: [
                            const Text(
                              '10',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Lato',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              AppLocalizations.of(context)!.bookings,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Lato',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Divider(
                          height: 1,
                          color: HexColor('#AEEBBF'),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        AppLocalizations.of(context)!.thisWeek,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8.0,
                                      ),
                                      const Text(
                                        '22-28 Aug',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        '\$',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4.0,
                                      ),
                                      Text(
                                        '588',
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
                                    height: 8.0,
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        '22',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'Lato',
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8.0,
                                      ),
                                      Text(
                                        AppLocalizations.of(context)!.bookings,
                                        style: const TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'Lato',
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Container(
                              height: 80,
                              width: 1,
                              color: HexColor('#AEEBBF'),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        AppLocalizations.of(context)!.thisMonth,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8.0,
                                      ),
                                      const Text(
                                        '01-31 Aug',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        '\$',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4.0,
                                      ),
                                      Text(
                                        '1688',
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
                                    height: 8.0,
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        '34',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'Lato',
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8.0,
                                      ),
                                      Text(
                                        AppLocalizations.of(context)!.bookings,
                                        style: const TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'Lato',
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          AppLocalizations.of(context)!.bookingsCompleted,
                          style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Lato',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          AppLocalizations.of(context)!.seeMore,
                          style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Lato',
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: HexColor('#FFE4D5'),
                        borderRadius: BorderRadius.circular(16.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.today,
                          style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Lato',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        const Row(
                          children: [
                            Text(
                              '\$',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Lato',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              '344',
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
                          height: 8.0,
                        ),
                        Row(
                          children: [
                            const Text(
                              '10',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Lato',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              AppLocalizations.of(context)!.bookings,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Lato',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Divider(
                          height: 1,
                          color: HexColor('#FAC7B8'),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        AppLocalizations.of(context)!.thisWeek,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8.0,
                                      ),
                                      const Text(
                                        '22-28 Aug',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        '\$',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4.0,
                                      ),
                                      Text(
                                        '588',
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
                                    height: 8.0,
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        '22',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'Lato',
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8.0,
                                      ),
                                      Text(
                                        AppLocalizations.of(context)!.bookings,
                                        style: const TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'Lato',
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Container(
                              height: 80,
                              width: 1,
                              color: HexColor('#FAC7B8'),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        AppLocalizations.of(context)!.thisMonth,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8.0,
                                      ),
                                      const Text(
                                        '01-31 Aug',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        '\$',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4.0,
                                      ),
                                      Text(
                                        '1688',
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
                                    height: 8.0,
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        '34',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'Lato',
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8.0,
                                      ),
                                      Text(
                                        AppLocalizations.of(context)!.bookings,
                                        style: const TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'Lato',
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).padding.bottom + 16),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
