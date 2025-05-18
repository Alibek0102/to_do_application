import 'package:flutter_to_do_application/features/tasks/data/datasources/task_local_datasource.dart';
import 'package:flutter_to_do_application/features/tasks/data/models/task_model.dart';
import 'package:flutter_to_do_application/features/tasks/domain/entities/task_entity.dart';
import 'package:flutter_to_do_application/features/tasks/domain/repositories/task_repository.dart';
import 'package:flutter_to_do_application/features/tasks/presentation/common/enums/tasks_status_enum.dart';

class TaskRepositoryImpl extends TaskRepository {
  final TaskLocalDatasource taskLocalDS;

  TaskRepositoryImpl(this.taskLocalDS);

  @override
  Future<void> addTask(TaskEntity task) async {
    final model = TaskModel.fromEntity(task);
    taskLocalDS.addTask(model);
  }

  @override
  Future<void> removeTask(int taskIndex) async {
    taskLocalDS.removeTask(taskIndex);
  }

  @override
  Future<List<TaskEntity>> getTasks(TasksStatus? taskStatus) async {
    final taskModels = taskLocalDS.getTasks(taskStatus);
    List<TaskEntity> taskEntities =
        taskModels.map((taskModel) => taskModel.toEntity()).toList();
    return taskEntities;
  }

  @override
  Future<void> updateTask(int taskIndex, TaskEntity task) async {
    final taskModel = TaskModel.fromEntity(task);
    taskLocalDS.updateTask(taskIndex, taskModel);
  }
}
