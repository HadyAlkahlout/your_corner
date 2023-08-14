abstract class LoginStates {}

class LoginInitialStates extends LoginStates{}

class LoginChangePasswordState extends LoginStates{}

// class LoginLoadingState extends LoginStates{}
//
// class LoginSuccessState extends LoginStates{
//   LoginSuccessState({required this.response});
//   LoginResponse response;
// }
//
// class LoginErrorState extends LoginStates{
//   LoginErrorState({required this.error});
//   String error;
// }