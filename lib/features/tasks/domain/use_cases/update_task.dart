import 'package:flutter_to_do_application/features/tasks/domain/entities/task_entity.dart';
import 'package:flutter_to_do_application/features/tasks/domain/repositories/task_repository.dart';

class UpdateTask {
  final TaskRepository taskRepository;

  const UpdateTask(this.taskRepository);

  Future<void> perform(int taskIndex, TaskEntity task) {
    return taskRepository.updateTask(taskIndex, task);
  }
}
