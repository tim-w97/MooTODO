import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyTodosScreen extends StatelessWidget {
  const MyTodosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.brown,
        child: Icon(
          Icons.add,
          color: Colors.brown.shade100,
        ),
        onPressed: () {},
      ),
      backgroundColor: Colors.brown.shade200,
      body: SafeArea(
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
            const Text(
              "MooTODO",
              style: TextStyle(
                color: Colors.brown,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
