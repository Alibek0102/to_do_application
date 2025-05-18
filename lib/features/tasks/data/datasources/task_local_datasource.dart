import 'package:flutter_to_do_application/features/tasks/data/models/task_model.dart';
import 'package:flutter_to_do_application/features/tasks/presentation/common/enums/tasks_status_enum.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TaskLocalDatasource {
  final Box<TaskModel> taskBox;

  const TaskLocalDatasource(this.taskBox);

  List<TaskModel> getTasks(TasksStatus? taskStatus) {
    switch (taskStatus) {
      case TasksStatus.completed:
        return taskBox.values.where((data) => data.isCompleted == true).toList()
          ..sort((a, b) => b.createdAt.compareTo(a.createdAt));
      case TasksStatus.unfulfilled:
        return taskBox.values
            .where((data) => data.isCompleted == false)
            .toList()
          ..sort((a, b) => b.createdAt.compareTo(a.createdAt));
      default:
        return taskBox.values.toList()
          ..sort((a, b) => b.createdAt.compareTo(a.createdAt));
    }
  }

  void addTask(TaskModel task) {
    taskBox.add(task);
  }

  void removeTask(int taskIndex) {
    taskBox.deleteAt(taskIndex);
  }

  void updateTask(int taskIndex, TaskModel task) {
    taskBox.putAt(taskIndex, task);
  }
}
