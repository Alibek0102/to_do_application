import 'package:flutter/cupertino.dart';
import 'package:flutter_to_do_application/features/tasks/domain/entities/task_entity.dart';
import 'package:flutter_to_do_application/shared/constants/app_colors.dart';
import 'package:flutter_to_do_application/shared/extentions/int_sized_box.dart';
import 'package:flutter_to_do_application/shared/themes/app_text_styles.dart';
import 'package:intl/intl.dart';

class TaskItem extends StatelessWidget {
  final TaskEntity task;
  final VoidCallback onChangeStatus;

  const TaskItem({super.key, required this.task, required this.onChangeStatus});

  @override
  Widget build(BuildContext context) {
    String formattedDate =
        DateFormat('kk:mm yyyy.MM.dd').format(task.createdAt);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16.0),
      child: SizedBox(
        height: 130,
        child: DecoratedBox(
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(
              color: AppColors.lightGray5,
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 0),
            ),
          ], color: AppColors.white, borderRadius: BorderRadius.circular(8.0)),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task.title,
                  style: AppTextStyles.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                10.h,
                Text(task.text,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    maxLines: 2,
                    style: AppTextStyles.caption),
                const Spacer(),
                Row(
                  children: [
                    Text(formattedDate, style: AppTextStyles.caption),
                    const Spacer(),
                    const Text(
                      'Отметить как выполнено',
                      style: TextStyle(
                          fontSize: 12.0, fontWeight: FontWeight.bold),
                    ),
                    CupertinoCheckbox(
                      value: task.isCompleted,
                      onChanged: (_) => onChangeStatus(),
                      activeColor: CupertinoTheme.of(context).primaryColor,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
