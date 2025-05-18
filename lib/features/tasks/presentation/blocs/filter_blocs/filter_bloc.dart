import 'package:flutter_to_do_application/features/tasks/presentation/common/enums/tasks_status_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'filter_state.dart';
part 'filter_event.dart';

part 'filter_bloc.freezed.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc() : super(const FilterState()) {
    on<_FilterChangeEvent>((event, emit) {
      emit(state.copyWith(selectedFilter: event.status));
    });
  }
}
