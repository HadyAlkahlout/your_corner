abstract class CodeStates {}

class CodeInitialState extends CodeStates{}

class CodeEndTimerState extends CodeStates{}

// class CodeLoadingState extends CodeStates{}
//
// class CodeRegisterSuccessState extends CodeStates{
//   CodeRegisterSuccessState({required this.response});
//   LoginResponse response;
// }
//
// class CodeSuccessState extends CodeStates{
//   CodeSuccessState({required this.response});
//   GenericModel response;
// }
//
// class CodeErrorState extends CodeStates{
//   CodeErrorState({required this.error});
//   String error;
// }
//
// class CodeResendSuccessState extends CodeStates{
//   CodeResendSuccessState({required this.response});
//   GenericModel response;
// }