part of 'filter_bloc.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState(
      {@Default(TasksStatus.all) TasksStatus selectedFilter}) = _FilterState;
}
