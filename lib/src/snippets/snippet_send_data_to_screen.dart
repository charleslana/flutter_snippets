import 'package:flutter/material.dart';

class SnippetSendDataToScreen extends StatelessWidget {
  SnippetSendDataToScreen({Key? key}) : super(key: key);

  final _todos = List.generate(
    20,
    (i) => Todo(
      'Todo $i',
      'Uma breve descrição do todo $i',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TodosScreen(
        todos: _todos,
      ),
    );
  }
}

class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

class TodosScreen extends StatelessWidget {
  final List<Todo> todos;
  TodosScreen({Key? key, required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(todo: todos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Todo todo;
  DetailScreen({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text(todo.description),
      ),
    );
  }
}
