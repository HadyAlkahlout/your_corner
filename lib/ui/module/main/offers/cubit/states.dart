abstract class OffersStates {}

class OffersInitialStates extends OffersStates{}

class OffersChangeTapStates extends OffersStates{}

class OffersChangeSubTapStates extends OffersStates{}

class OffersLoadingState extends OffersStates{}

class OffersSuccessState extends OffersStates{}

class OffersErrorState extends OffersStates{
  OffersErrorState({required this.error});
  String error;
}