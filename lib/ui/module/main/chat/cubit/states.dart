abstract class ChatsStates {}

class ChatsInitialStates extends ChatsStates{}

class ChatsLoadingState extends ChatsStates{}

class ChatsSuccessState extends ChatsStates{}

class ChatsErrorState extends ChatsStates{
  ChatsErrorState({required this.error});
  String error;
}