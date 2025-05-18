import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do_application/features/tasks/domain/entities/task_entity.dart';
import 'package:flutter_to_do_application/features/tasks/domain/use_cases/add_tasks.dart';
import 'package:flutter_to_do_application/features/tasks/domain/use_cases/get_tasks.dart';
import 'package:flutter_to_do_application/features/tasks/domain/use_cases/remove_tasks.dart';
import 'package:flutter_to_do_application/features/tasks/domain/use_cases/update_task.dart';
import 'package:flutter_to_do_application/features/tasks/presentation/common/enums/tasks_status_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';

part 'tasks_bloc.freezed.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  final AddTasks addTask;
  final GetTasks getTasks;
  final RemoveTasks removeTask;
  final UpdateTask updateTask;

  TasksBloc(
      {required this.addTask,
      required this.getTasks,
      required this.removeTask,
      required this.updateTask})
      : super(const TasksState.initial()) {
    on<_TasksStartEvent>(_onGetTasks);
    on<_TaskCreateEvent>(_onCreateTask);
    on<_TaskRemoveEvent>(_onRemoveTask);
    on<_TaskToogleStatusEvent>(_onChangeTaskStatus);
  }

  void _onGetTasks(_TasksStartEvent event, emit) async {
    List<TaskEntity> tasks = await getTasks.perform(event.status);
    emit(TasksState.loaded(tasks: tasks));
  }

  void _onCreateTask(_TaskCreateEvent event, emit) {
    if (event.title == null) return;
    final taskEntity = TaskEntity(
        id: const Uuid().v1(),
        title: event.title!,
        text: event.text ?? '',
        createdAt: DateTime.now());
    addTask.perform(task: taskEntity);
  }

  void _onRemoveTask(_TaskRemoveEvent event, emit) async {
    if (state is _TaskLoadedState) {
      final currentTasks = (state as _TaskLoadedState).tasks;
      final taskIndex = event.taskIndex;
      final taskToDelete = currentTasks[taskIndex];
      final newTasks = currentTasks
          .where((TaskEntity task) => task.id != taskToDelete.id)
          .toList();

      await removeTask.perform(taskIndex: event.taskIndex);
      emit(TasksState.loaded(tasks: newTasks));
    }
  }

  void _onChangeTaskStatus(_TaskToogleStatusEvent event, emit) async {
    if (state is _TaskLoadedState) {
      final currentTasks = (state as _TaskLoadedState).tasks;
      final taskIndex = event.taskIndex;
      final taskToUpdate = currentTasks[taskIndex];
      final updatedTask =
          taskToUpdate.copyWith(isCompleted: !taskToUpdate.isCompleted);

      final newTasks = currentTasks.map((TaskEntity task) {
        if (task.id == taskToUpdate.id) {
          return updatedTask;
        }
        return task;
      }).toList();

      await updateTask.perform(taskIndex, updatedTask);
      emit(TasksState.loaded(tasks: newTasks));
    }
  }
}
