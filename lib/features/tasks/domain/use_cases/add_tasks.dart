import 'package:flutter_to_do_application/features/tasks/domain/entities/task_entity.dart';
import 'package:flutter_to_do_application/features/tasks/domain/repositories/task_repository.dart';

class AddTasks {
  final TaskRepository taskRepository;

  const AddTasks(this.taskRepository);

  Future<void> perform({required TaskEntity task}) {
    return taskRepository.addTask(task);
  }
}
