abstract class RegisterStates {}

class RegisterInitialStates extends RegisterStates{}

class RegisterChangeCheckState extends RegisterStates{}

// class RegisterLoadingState extends RegisterStates{}
//
// class RegisterSuccessState extends RegisterStates{
//   RegisterSuccessState({required this.response});
//   GenericModel response;
// }
//
// class RegisterErrorState extends RegisterStates{
//   RegisterErrorState({required this.error});
//   String error;
// }