import 'package:flutter/material.dart';
import 'package:moo_todo/screens/my_todos_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MooTODO',
      routes: {
        "/": (context) => const MyTodosScreen(),
      },
    );
  }
}
