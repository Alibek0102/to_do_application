import 'package:flutter_to_do_application/features/tasks/domain/entities/task_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'task_model.g.dart';

@HiveType(typeId: 0)
class TaskModel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String text;
  @HiveField(3)
  final DateTime createdAt;
  @HiveField(4)
  final bool isCompleted;

  TaskModel(
      {required this.id,
      required this.title,
      required this.text,
      required this.createdAt,
      required this.isCompleted});

  factory TaskModel.fromEntity(TaskEntity task) => TaskModel(
      id: task.id,
      title: task.title,
      text: task.text,
      createdAt: task.createdAt,
      isCompleted: task.isCompleted);

  TaskEntity toEntity() => TaskEntity(
      id: id,
      title: title,
      text: text,
      createdAt: createdAt,
      isCompleted: isCompleted);
}
