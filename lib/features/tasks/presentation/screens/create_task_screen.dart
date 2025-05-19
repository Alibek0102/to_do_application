import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_to_do_application/core/di/service_locator.dart';
import 'package:flutter_to_do_application/features/tasks/presentation/blocs/tasks_blocs/tasks_bloc.dart';
import 'package:flutter_to_do_application/features/tasks/presentation/common/widgets/custom_cupertino_simple_nav_bar.dart';
import 'package:flutter_to_do_application/shared/constants/app_colors.dart';
import 'package:flutter_to_do_application/shared/extentions/int_sized_box.dart';
import 'package:flutter_to_do_application/shared/themes/app_text_styles.dart';

@RoutePage()
class CreateTaskScreen extends StatefulWidget {
  final int? taskIndex;
  final String? title;
  final String? text;

  const CreateTaskScreen({super.key, this.taskIndex, this.title, this.text});

  @override
  State<CreateTaskScreen> createState() => _CreateTaskScreenState();
}

class _CreateTaskScreenState extends State<CreateTaskScreen> {
  late TextEditingController titleController;
  late TextEditingController textController;

  @override
  void initState() {
    super.initState();

    titleController = TextEditingController(text: widget.title);
    textController = TextEditingController(text: widget.text);
  }

  final _tasksBloc = getIt.get<TasksBloc>();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CustomCupertinoSimpleNavBar(
        title: 'Создать задачу',
        closeButtonTitle: 'Закрыть',
        onLeadingButtonPress: () {
          context.router.back();
        },
      ),
      child: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  35.h,
                  const Text('Название задачи',
                      style: AppTextStyles.boldCaption),
                  5.h,
                  CupertinoTextField(
                    autofocus: true,
                    placeholder: 'Напишите название',
                    controller: titleController,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(8.0)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 18.0),
                  ),
                  30.h,
                  const Text('Чем вы хотите заниматься?',
                      style: AppTextStyles.boldCaption),
                  5.h,
                  CupertinoTextField(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 18.0),
                    maxLines: 10,
                    controller: textController,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(8.0)),
                  )
                ],
              ),
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 25),
            child: SizedBox(
              width: double.infinity,
              child: CupertinoButton(
                onPressed: () {
                  widget.taskIndex != null
                      ? _tasksBloc.add(TasksEvent.updateTask(
                          title: titleController.text,
                          text: textController.text,
                          taskIndex: widget.taskIndex!))
                      : _tasksBloc.add(TasksEvent.create(
                          title: titleController.text,
                          text: textController.text));

                  context.router.back();
                },
                color: CupertinoTheme.of(context).primaryColor,
                child: const Text(
                  'Создать',
                  style: AppTextStyles.buttonLarge,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
