import 'package:flutter_to_do_application/features/tasks/domain/repositories/task_repository.dart';

class RemoveTasks {
  final TaskRepository taskRepository;

  const RemoveTasks(this.taskRepository);

  Future<void> perform({required String taskId}) {
    return taskRepository.removeTask(taskId);
  }
}
