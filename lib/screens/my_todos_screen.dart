import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:moo_todo/models/todo.dart';
import 'package:moo_todo/widgets/add_new_todo.dart';
import 'package:moo_todo/widgets/todo_list.dart';

class MyTodosScreen extends StatefulWidget {
  const MyTodosScreen({Key? key}) : super(key: key);

  @override
  State<MyTodosScreen> createState() => _MyTodosScreenState();
}

class _MyTodosScreenState extends State<MyTodosScreen> {
  List<Todo> todos = [
    Todo(text: "Buy eggs"),
    Todo(text: "Buy milk"),
    Todo(text: "Buy cornflakes"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.brown,
        child: Icon(
          Icons.add,
          color: Colors.brown.shade100,
        ),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                decoration: BoxDecoration(
                  color: Colors.brown.shade200,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: AddNewTodo(
                  onAddNewTodo: (text) {
                    setState(() {
                      todos.add(Todo(text: text));
                      Navigator.pop(context);
                    });
                  },
                ),
              ),
            ),
          );
        },
      ),
      backgroundColor: Colors.brown.shade100,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Center(
              child: Lottie.asset(
                "assets/lottie_animations/cow.json",
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Moo",
                  style: TextStyle(color: Colors.brown, fontSize: 50),
                ),
                Text(
                  "TODO",
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 50,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                decoration: BoxDecoration(
                  color: Colors.brown.shade200,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: TodoList(
                  todos: todos,
                  onTodoChecked: (todo, newValue) {
                    setState(() {
                      todo.set(isDone: newValue);
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
