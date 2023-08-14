abstract class BookingStates {}

class BookingInitialStates extends BookingStates{}

class BookingChangeTapStates extends BookingStates{}

class BookingChangeSubTapStates extends BookingStates{}

class BookingLoadingState extends BookingStates{}

class BookingSuccessState extends BookingStates{}

class BookingErrorState extends BookingStates{
  BookingErrorState({required this.error});
  String error;
}