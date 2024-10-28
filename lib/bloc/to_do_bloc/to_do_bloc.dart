import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:to_do_app/models/task.dart';

part 'to_do_event.dart';
part 'to_do_state.dart';

class TodoBloc extends Bloc<ToDoEvent, TodoState> {
  TodoBloc() : super(TodoState(tasks: [])) {
    on<AddTaskEvent>((event, emit) {
      final newTask = Task(title: event.title);
      final updatedTasks = List<Task>.from(state.tasks)..add(newTask);
      emit(TodoState(tasks: updatedTasks));
    });

    on<ToggleTaskCompletionEvent>((event, emit) {
      final updatedTasks = List<Task>.from(state.tasks);
      updatedTasks[event.index].isCompleted =
          !updatedTasks[event.index].isCompleted;
      emit(TodoState(tasks: updatedTasks));
    });
  }
}
