class OfferModel {
  int id;
  String name;
  int status;
  String date;
  String totalRevenue;
  String bookings;
  String discountGiven;
  String effectiveDiscount;
  String offerApplicable;
  String minimumOrder;
  String paymentMood;

  OfferModel({
    required this.id,
    required this.name,
    required this.status,
    required this.date,
    required this.totalRevenue,
    required this.bookings,
    required this.discountGiven,
    required this.effectiveDiscount,
    required this.offerApplicable,
    required this.minimumOrder,
    required this.paymentMood,
  });

}