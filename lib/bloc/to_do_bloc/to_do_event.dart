part of 'to_do_bloc.dart';

@immutable
sealed class ToDoEvent {}

class AddTaskEvent extends ToDoEvent {
  final String title;

  AddTaskEvent(this.title);
}

class ToggleTaskCompletionEvent extends ToDoEvent {
  final int index;

  ToggleTaskCompletionEvent(this.index);
}
