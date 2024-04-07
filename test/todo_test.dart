// This is an example unit test.
//
// A unit test tests a single function, method, or class. To learn more about
// writing unit tests, visit
// https://flutter.dev/docs/cookbook/testing/unit/introduction

import 'package:flutter_design_jam/bloc/todo/todo.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('bloc todo', () {
    test('todos should be equatable', () {
      Todo todo1 = Todo(
        userId: 1,
        id: 1,
        title: 'title',
        completed: false,
      );

      Todo todo2 = Todo(
        userId: 1,
        id: 1,
        title: 'title',
        completed: false,
      );

      expect(todo1 == todo2, true, reason: 'todos should be equal');
    });
  });
}
