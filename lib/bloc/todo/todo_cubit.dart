import 'package:flutter_design_jam/bloc/todo/todo_model.dart';
import 'package:flutter_design_jam/bloc/todo/todo_service.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class TodoCubit extends HydratedCubit<List<Todo>> {
  TodoCubit() : super([]);

  void loadTodos() => {RestAPIService.getTodos().then((todos) => emit(todos))};
  void addTodo(Todo todo) => emit([...state, todo]);
  void removeTodo(int id) =>
      emit(state.where((todo) => todo.id != id).toList());
  void completeTodo(int id) => emit(state.map((todo) {
        if (todo.id == id) {
          return todo.copyWith(completed: true);
        }
        return todo;
      }).toList());

  //HydratedCubit overloads
  @override
  List<Todo>? fromJson(Map<String, dynamic> json) {
    final todos = json['todos'] as List<dynamic>;
    final list = todos.map((e) => Todo.fromJson(e)).toList();
    return list;
  }

  @override
  Map<String, dynamic>? toJson(List<Todo> state) {
    return {'todos': state.map((e) => e.toJson()).toList()};
  }
}
