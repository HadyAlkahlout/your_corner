import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:your_corner/domain/model/main/model_book.dart';
import 'package:your_corner/domain/model/main/model_service.dart';
import 'states.dart';

class BookingCubit extends Cubit<BookingStates> {
  BookingCubit() : super(BookingInitialStates());

  static BookingCubit get(context) => BlocProvider.of(context);

  int currentTap = 0;

  void changeTap(int tap) {
    currentTap = tap;
    emit(BookingChangeTapStates());
  }

  int currentSubTap = 0;

  void changeSubTap(int tap) {
    currentSubTap = tap;
    emit(BookingChangeSubTapStates());
  }

  List<BookModel> bookHistory = [];
  List<BookModel> myBooks = [];
  List<BookModel> pendingBooks = [];
  List<BookModel> completedBooks = [];
  List<BookModel> rejectedBooks = [];
  List<BookModel> cancelledBooks = [];

  void getBooks() {
    emit(BookingLoadingState());
    List<ServiceModel> services = [];
    services.add(ServiceModel(
        id: 1, name: 'Hairdressing with hair wash', price: '1200'));
    services.add(ServiceModel(id: 2, name: 'Haircut', price: '98'));
    myBooks.add(BookModel(
      id: 1,
      name: 'Aalia Ali',
      status: 0,
      bookId: 'S675987DSCXSSD',
      date: '22/08/2022',
      time: '11:00 am',
      total: '1298',
      paymentMood: 'Online',
      services: services,
    ));
    myBooks.add(BookModel(
      id: 2,
      name: 'Aalia Ali',
      status: 0,
      bookId: 'S675987DSCXSSD',
      date: '22/08/2022',
      time: '11:00 am',
      total: '1298',
      paymentMood: 'Online',
      services: services,
    ));
    pendingBooks.add(BookModel(
      id: 3,
      name: 'Aalia Ali',
      status: 1,
      bookId: 'S675987DSCXSSD',
      date: '22/08/2022',
      time: '11:00 am',
      total: '1298',
      paymentMood: 'Online',
      services: services,
    ));
    completedBooks.add(BookModel(
      id: 4,
      name: 'Aalia Ali',
      status: 2,
      bookId: 'S675987DSCXSSD',
      date: '22/08/2022',
      time: '11:00 am',
      total: '1298',
      paymentMood: 'Online',
      services: services,
    ));
    rejectedBooks.add(BookModel(
      id: 5,
      name: 'Aalia Ali',
      status: 3,
      bookId: 'S675987DSCXSSD',
      date: '22/08/2022',
      time: '11:00 am',
      total: '1298',
      paymentMood: 'Online',
      services: services,
    ));
    cancelledBooks.add(BookModel(
      id: 6,
      name: 'Aalia Ali',
      status: 4,
      bookId: 'S675987DSCXSSD',
      date: '22/08/2022',
      time: '11:00 am',
      total: '1298',
      paymentMood: 'Online',
      services: services,
    ));
    bookHistory.addAll(myBooks);
    bookHistory.addAll(pendingBooks);
    bookHistory.addAll(completedBooks);
    bookHistory.addAll(rejectedBooks);
    bookHistory.addAll(cancelledBooks);
    emit(BookingSuccessState());
  }

// void getBooks() {
//   emit(BookingLoadingState());
//   AppRepository.getRequest(
//     endPoint: Dashboard_END_POINT,
//   ).then((value) {
//     print('Response : ${value.data}');
//     emit(DashboardSuccessState(response: DashboardResponse.fromJson(value.data)));
//   }).catchError((error){
//     print("Error : $error");
//     emit(DashboardErrorState(error: error.toString()));
//   });
// }
}
