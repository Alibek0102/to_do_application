import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do_application/core/di/service_locator.dart';
import 'package:flutter_to_do_application/features/tasks/presentation/blocs/filter_blocs/filter_bloc.dart';
import 'package:flutter_to_do_application/features/tasks/presentation/blocs/tasks_blocs/tasks_bloc.dart';
import 'package:flutter_to_do_application/features/tasks/presentation/common/enums/tasks_status_enum.dart';
import 'package:flutter_to_do_application/features/tasks/presentation/common/widgets/custom_cupertino_nav_bar.dart';
import 'package:flutter_to_do_application/features/tasks/presentation/common/widgets/segmented_control_item.dart';
import 'package:flutter_to_do_application/features/tasks/presentation/common/widgets/task_item.dart';
import 'package:flutter_to_do_application/shared/constants/app_colors.dart';
import 'package:flutter_to_do_application/shared/extentions/int_sized_box.dart';
import 'package:flutter_to_do_application/shared/routes/app_routes.gr.dart';
import 'package:flutter_to_do_application/shared/themes/app_text_styles.dart';
import 'package:lottie/lottie.dart';

@RoutePage()
class TasksScreen extends StatelessWidget {
  final _filterBloc = getIt.get<FilterBloc>();
  final _tasksBloc = getIt.get<TasksBloc>();

  TasksScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: CupertinoTheme.of(context).scaffoldBackgroundColor,
        child: CustomScrollView(
          slivers: [
            CustomCupertinoNavBar(
              onTrailingButtonPress: () {
                context.router.pushNamed('/create-task');
              },
            ),
            BlocConsumer<FilterBloc, FilterState>(
              listener: (context, state) {
                if (state.selectedFilter != TasksStatus.all) {
                  _tasksBloc
                      .add(TasksEvent.start(status: state.selectedFilter));
                } else {
                  _tasksBloc.add(const TasksEvent.start());
                }
              },
              bloc: _filterBloc,
              builder: (context, state) {
                return PinnedHeaderSliver(
                  child: ColoredBox(
                    color: AppColors.lightGray3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      child: CupertinoSlidingSegmentedControl(
                          groupValue: state.selectedFilter,
                          thumbColor: CupertinoTheme.of(context).primaryColor,
                          children: const <TasksStatus, Widget>{
                            TasksStatus.all: SegmentedControlItem(title: 'Все'),
                            TasksStatus.completed:
                                SegmentedControlItem(title: 'Готово'),
                            TasksStatus.unfulfilled: SegmentedControlItem(
                              title: 'Осталось',
                            )
                          },
                          onValueChanged: (status) {
                            if (status != null) {
                              _filterBloc.add(
                                  FilterEvent.changeStatus(status: status));
                            }
                          }),
                    ),
                  ),
                );
              },
            ),
            BlocBuilder<TasksBloc, TasksState>(
              bloc: _tasksBloc..add(const TasksEvent.start()),
              builder: (context, state) {
                return state.maybeWhen(loaded: (tasks) {
                  if (tasks.isEmpty) {
                    return SliverFillRemaining(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: SizedBox(
                                width: 200,
                                height: 200,
                                child: Lottie.asset(
                                    'assets/lotties/emptyList.json')),
                          ),
                          const Text(
                            'Нет задач',
                            style: AppTextStyles.title,
                          ),
                          10.h,
                          const Text(
                              'Добавьте первую задачу,\nчтобы начать планировать свой день.',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.caption)
                        ],
                      ),
                    );
                  }

                  return SliverList.builder(
                      itemCount: tasks.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CupertinoContextMenu.builder(
                          enableHapticFeedback: true,
                          actions: [
                            CupertinoContextMenuAction(
                              onPressed: () {
                                context.router.push(CreateTaskRoute(
                                    taskIndex: index,
                                    title: tasks[index].title,
                                    text: tasks[index].text));
                                Navigator.pop(context);
                              },
                              isDefaultAction: true,
                              trailingIcon: CupertinoIcons.pen,
                              child: const Text('Изменить'),
                            ),
                            CupertinoContextMenuAction(
                              onPressed: () {
                                _tasksBloc
                                    .add(TasksEvent.remove(taskIndex: index));
                                Navigator.pop(context);
                              },
                              trailingIcon: CupertinoIcons.delete,
                              child: const Text('Удалить'),
                            ),
                          ],
                          builder: (BuildContext context, _) {
                            return TaskItem(
                              task: tasks[index],
                              onChangeStatus: () {
                                _tasksBloc.add(TasksEvent.toogleTaskStatus(
                                    taskIndex: index));
                              },
                            );
                          },
                        );
                      });
                }, orElse: () {
                  return SliverFillRemaining(
                    child: Center(
                      child: SizedBox(
                          width: 150,
                          height: 150,
                          child: Lottie.asset('assets/lotties/emptyList.json')),
                    ),
                  );
                });
              },
            )
          ],
        ));
  }
}
