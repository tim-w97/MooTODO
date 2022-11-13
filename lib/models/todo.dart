class Todo {
  String text;
  bool isDone;

  Todo({
    required this.text,
    this.isDone = false,
  });

  void set({required bool isDone}) {
    this.isDone = isDone;
  }
}
