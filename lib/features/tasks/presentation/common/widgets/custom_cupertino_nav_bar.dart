import 'package:flutter/cupertino.dart';
import 'package:flutter_to_do_application/shared/extentions/int_sized_box.dart';

class CustomCupertinoNavBar extends StatelessWidget {
  final Function()? onTrailingButtonPress;

  const CustomCupertinoNavBar({super.key, this.onTrailingButtonPress});

  @override
  Widget build(BuildContext context) {
    return CupertinoSliverNavigationBar(
        border: const Border(bottom: BorderSide.none),
        backgroundColor: CupertinoTheme.of(context).barBackgroundColor,
        largeTitle: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Все задачи!',
            ),
            8.w,
            Text(
              '✅',
              style:
                  CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
            )
          ],
        ),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: onTrailingButtonPress,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Создать',
                style: CupertinoTheme.of(context).textTheme.navActionTextStyle,
              ),
              5.w,
              Icon(
                CupertinoIcons.add,
                size: 22,
                color: CupertinoTheme.of(context).primaryColor,
              )
            ],
          ),
        ));
  }
}
