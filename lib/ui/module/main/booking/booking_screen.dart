import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:your_corner/domain/model/main/model_book.dart';
import 'package:your_corner/ui/component/item_book.dart';
import 'package:your_corner/ui/component/item_book_history.dart';

import '../../../style/color.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookingCubit()..getBooks(),
      child: BlocConsumer<BookingCubit, BookingStates>(
        listener: (context, state) {},
        builder: (context, state) {
          BookingCubit cubit = BookingCubit.get(context);
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
                                    AppLocalizations.of(context)!.booking,
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
                                    AppLocalizations.of(context)!
                                        .bookingHistory,
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
                  visible: cubit.currentTap == 0,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: [
                        Row(
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
                                height: 40,
                                width: 140,
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
                                    AppLocalizations.of(context)!.myBookings,
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
                                height: 40,
                                width: 160,
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
                                    AppLocalizations.of(context)!.bookingRequests,
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
                                height: 40,
                                width: 160,
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
                                    AppLocalizations.of(context)!.completedRequests,
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
                                height: 40,
                                width: 160,
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
                                    AppLocalizations.of(context)!.rejectedRequests,
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
                            InkWell(
                              onTap: () {
                                cubit.changeSubTap(4);
                              },
                              child: Container(
                                height: 40,
                                width: 160,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: cubit.currentSubTap == 4
                                        ? Colors.black
                                        : Colors.grey,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(24),
                                  color: HexColor(cardBackgroundColor),
                                ),
                                child: Center(
                                  child: Text(
                                    AppLocalizations.of(context)!.cancelledRequests,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: cubit.currentSubTap == 4
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
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ListView.separated(
                      itemBuilder: (context, index) => cubit.currentTap == 0
                          ? BookItem(book: getSelectedList(cubit)[index])
                          : BookHistoryItem(book: cubit.bookHistory[index]),
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 16,
                      ),
                      itemCount: cubit.currentTap == 0
                          ? getSelectedList(cubit).length
                          : cubit.bookHistory.length,
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

  List<BookModel> getSelectedList(BookingCubit cubit) {
    switch (cubit.currentSubTap) {
      case 0:
        {
          return cubit.myBooks;
        }
      case 1:
        {
          return cubit.pendingBooks;
        }
      case 2:
        {
          return cubit.completedBooks;
        }
      case 3:
        {
          return cubit.rejectedBooks;
        }
      case 4:
        {
          return cubit.cancelledBooks;
        }
    }
    return cubit.myBooks;
  }
}
