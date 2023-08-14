import 'model_service.dart';

class BookModel {
  int id;
  String name;
  int status;
  String bookId;
  String date;
  String time;
  String total;
  String paymentMood;
  List<ServiceModel> services;

  BookModel({
    required this.id,
    required this.name,
    required this.status,
    required this.bookId,
    required this.date,
    required this.time,
    required this.total,
    required this.paymentMood,
    required this.services,
  });

}