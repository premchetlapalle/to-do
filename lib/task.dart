class Task {
  final String title;
  bool isCompleted;
  final DateTime timestamp;

  Task({required this.title, this.isCompleted = false})
      : timestamp = DateTime.now();
}
