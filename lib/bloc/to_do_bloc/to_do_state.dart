part of 'to_do_bloc.dart';

@immutable
sealed class ToDoState {}

final class ToDoInitial extends ToDoState {}

class TodoState {
  final List<Task> tasks;

  TodoState({required this.tasks});
}
