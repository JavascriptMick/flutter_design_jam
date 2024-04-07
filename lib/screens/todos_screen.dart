import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/todo/todo.dart';

class TodosScreen extends StatelessWidget {
  const TodosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todos')),
      body: BlocBuilder<TodoCubit, List<Todo>>(
        builder: (context, todos) => Center(child: todosList(todos)),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: const Text('Load'),
            onPressed: () => context.read<TodoCubit>().loadTodos(),
          ),
        ],
      ),
    );
  }
}

Widget todosList(List<Todo> todos) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Column(
        children: todos
            .map((todo) => ListTile(
                  key: Key(todo.id.toString()),
                  title: Text(todo.id.toString()),
                  subtitle: Text(todo.title),
                ))
            .toList(),
      ),
    ],
  );
}
