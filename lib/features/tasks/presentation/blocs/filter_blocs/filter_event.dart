part of 'filter_bloc.dart';

@freezed
class FilterEvent with _$FilterEvent {
  const factory FilterEvent.changeStatus({required TasksStatus status}) =
      _FilterChangeEvent;
}
