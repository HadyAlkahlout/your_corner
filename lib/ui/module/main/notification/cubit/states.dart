abstract class NotificationsStates {}

class NotificationsInitialStates extends NotificationsStates{}

class NotificationsLoadingState extends NotificationsStates{}

class NotificationsSuccessState extends NotificationsStates{}

class NotificationsErrorState extends NotificationsStates{
  NotificationsErrorState({required this.error});
  String error;
}