class TaskEntity {
  final String id;
  final String title;
  final String text;
  final DateTime createdAt;
  final bool isCompleted;

  const TaskEntity(
      {required this.id,
      required this.title,
      required this.text,
      required this.createdAt,
      this.isCompleted = false});

  TaskEntity copyWith(
      {String? id,
      String? title,
      String? text,
      DateTime? createdAt,
      bool? isCompleted}) {
    return TaskEntity(
        id: id ?? this.id,
        title: title ?? this.title,
        text: text ?? this.text,
        createdAt: createdAt ?? this.createdAt,
        isCompleted: isCompleted ?? this.isCompleted);
  }
}
