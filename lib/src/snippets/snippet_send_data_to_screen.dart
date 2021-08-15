import 'package:flutter/material.dart';

class SnippetSendDataToScreen extends StatelessWidget {
  const SnippetSendDataToScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _todos = List.generate(
      20,
      (index) => SnippetSendDataToScreenTodo(
        'Title $index',
        'Description $index',
      ),
    );

    return Scaffold(
      body: SnippetSendDataToScreenTodosScreen(
        todos: _todos,
      ),
    );
  }
}

class SnippetSendDataToScreenTodo {
  const SnippetSendDataToScreenTodo(this.title, this.description);

  final String title;
  final String description;
}

class SnippetSendDataToScreenTodosScreen extends StatelessWidget {
  const SnippetSendDataToScreenTodosScreen({Key? key, required this.todos})
      : super(key: key);

  final List<SnippetSendDataToScreenTodo> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<dynamic>(
                  builder: (context) =>
                      SnippetSendDataToScreenDetailScreen(todo: todos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class SnippetSendDataToScreenDetailScreen extends StatelessWidget {
  const SnippetSendDataToScreenDetailScreen({Key? key, required this.todo})
      : super(key: key);

  final SnippetSendDataToScreenTodo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(todo.title),
              Text(todo.description),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
