import 'package:flutter_to_do_application/features/tasks/domain/entities/task_entity.dart';
import 'package:flutter_to_do_application/features/tasks/domain/repositories/task_repository.dart';
import 'package:flutter_to_do_application/features/tasks/presentation/common/enums/tasks_status_enum.dart';

class GetTasks {
  final TaskRepository taskRepository;

  const GetTasks(this.taskRepository);

  Future<List<TaskEntity>> perform(TasksStatus? taskStatus) {
    return taskRepository.getTasks(taskStatus);
  }
}
