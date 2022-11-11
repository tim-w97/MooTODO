import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyTodosScreen extends StatelessWidget {
  const MyTodosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> dummyTodos = [
      "Go out with the dog",
      "Clean the kitchen",
      "Buy cornflakes",
      "Play world of warcraft",
    ];

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.brown,
        child: Icon(
          Icons.add,
          color: Colors.brown.shade100,
        ),
        onPressed: () {},
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
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.brown.shade200,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: ListView.builder(
                  itemCount: dummyTodos.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (newValue) {},
                        ),
                        Text(
                          dummyTodos[index],
                          style: TextStyle(
                            color: Colors.brown.shade800,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    );
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
