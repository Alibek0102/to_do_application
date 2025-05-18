part of 'tasks_bloc.dart';

@freezed
class TasksEvent with _$TasksEvent {
  const factory TasksEvent.start({TasksStatus? status}) = _TasksStartEvent;
  const factory TasksEvent.create({String? title, String? text}) =
      _TaskCreateEvent;
  const factory TasksEvent.remove({required int taskIndex}) = _TaskRemoveEvent;
  const factory TasksEvent.toogleTaskStatus({required int taskIndex}) =
      _TaskToogleStatusEvent;
}
