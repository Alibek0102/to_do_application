import 'package:flutter_to_do_application/features/tasks/data/datasources/task_local_datasource.dart';
import 'package:flutter_to_do_application/features/tasks/data/models/task_model.dart';
import 'package:flutter_to_do_application/features/tasks/data/repositories/task_repository_impl.dart';
import 'package:flutter_to_do_application/features/tasks/domain/use_cases/add_tasks.dart';
import 'package:flutter_to_do_application/features/tasks/domain/use_cases/get_tasks.dart';
import 'package:flutter_to_do_application/features/tasks/domain/use_cases/remove_tasks.dart';
import 'package:flutter_to_do_application/features/tasks/domain/use_cases/update_task.dart';
import 'package:flutter_to_do_application/features/tasks/presentation/blocs/filter_blocs/filter_bloc.dart';
import 'package:flutter_to_do_application/features/tasks/presentation/blocs/tasks_blocs/tasks_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // client
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(0)) {
    Hive.registerAdapter(TaskModelAdapter());
  }
  final tasksBox = await Hive.openBox<TaskModel>('alltasks1');

  getIt.registerSingleton(tasksBox);

  // datasources
  getIt.registerFactory(() => TaskLocalDatasource(getIt.get<Box<TaskModel>>()));

  // repositories
  getIt.registerFactory(
      () => TaskRepositoryImpl(getIt.get<TaskLocalDatasource>()));

  // use_cases
  getIt.registerFactory(() => AddTasks(getIt.get<TaskRepositoryImpl>()));
  getIt.registerFactory(() => GetTasks(getIt.get<TaskRepositoryImpl>()));
  getIt.registerFactory(() => RemoveTasks(getIt.get<TaskRepositoryImpl>()));
  getIt.registerFactory(() => UpdateTask(getIt.get<TaskRepositoryImpl>()));

  // blocs
  getIt.registerSingleton(FilterBloc());
  getIt.registerSingleton(TasksBloc(
      addTask: getIt.get<AddTasks>(),
      getTasks: getIt.get<GetTasks>(),
      removeTask: getIt.get<RemoveTasks>(),
      updateTask: getIt.get<UpdateTask>()));
}
