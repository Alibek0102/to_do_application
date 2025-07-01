import 'package:flutter_to_do_application/features/tasks/domain/entities/task_entity.dart';
import 'package:flutter_to_do_application/features/tasks/presentation/common/enums/tasks_status_enum.dart';

abstract class TaskRepository {
  Future<List<TaskEntity>> getTasks(TasksStatus? taskStatus);
  Future<void> addTask(TaskEntity task);
  Future<void> removeTask(String taskId);
  Future<void> updateTask(int taskIndex, TaskEntity task);
}
