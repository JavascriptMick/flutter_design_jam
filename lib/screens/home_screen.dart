import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_design_jam/bloc/todo/todo.dart';

import 'package:flutter_design_jam/screens/counter_screen.dart';
import 'package:flutter_design_jam/screens/fancy_screen.dart';
import 'package:flutter_design_jam/screens/todos_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: BlocBuilder<TodoCubit, List<Todo>>(
        builder: (context, todos) =>
            Center(child: Text('There are ${todos.length} Todos in the state')),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: const Text('Counter Example'),
            onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const CounterScreen())),
          ),
          const SizedBox(height: 4),
          FloatingActionButton(
            child: const Text('Todos Example'),
            onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const TodosScreen())),
          ),
          const SizedBox(height: 4),
          FloatingActionButton(
            child: const Text('Fancy Flex'),
            onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const FancyScreen())),
          ),
        ],
      ),
    );
  }
}
