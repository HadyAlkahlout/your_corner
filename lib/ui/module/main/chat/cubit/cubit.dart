import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:your_corner/domain/model/main/model_chat.dart';
import 'states.dart';

class ChatsCubit extends Cubit<ChatsStates> {
  ChatsCubit() : super(ChatsInitialStates());

  static ChatsCubit get(context) => BlocProvider.of(context);

  List<ChatModel> Chats = [];

  void getChats() {
    emit(ChatsLoadingState());
    Chats.add(ChatModel(
      id: 1,
      name: 'Aalia Ali',
      message: 'thanks for the humble behaviour',
      date: '11:21 AM',
      messages: 3,
    ));
    Chats.add(ChatModel(
      id: 2,
      name: 'Albert Flores',
      message: 'Welcome to Hollywoood salon your world of [Niche] Awaits',
      date: '11:21 AM',
      messages: 0,
    ));
    emit(ChatsSuccessState());
  }

// void getChats() {
//   emit(ChatsLoadingState());
//   AppRepository.getRequest(
//     endPoint: Dashboard_END_POINT,
//   ).then((value) {
//     print('Response : ${value.data}');
//     emit(ChatsSuccessState());
//   }).catchError((error){
//     print("Error : $error");
//     emit(ChatsErrorState(error: error.toString()));
//   });
// }
}
