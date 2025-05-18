part of 'tasks_bloc.dart';

@freezed
class TasksState with _$TasksState {
  const factory TasksState.initial() = _TasksInitialState;
  const factory TasksState.loader() = _TasksLoaderState;
  const factory TasksState.loaded({@Default([]) List<TaskEntity> tasks}) =
      _TaskLoadedState;
}
