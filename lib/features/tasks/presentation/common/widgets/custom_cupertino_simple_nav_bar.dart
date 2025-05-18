import 'package:flutter/cupertino.dart';

class CustomCupertinoSimpleNavBar extends StatelessWidget
    implements ObstructingPreferredSizeWidget {
  final String title;
  final String closeButtonTitle;
  final Function()? onLeadingButtonPress;

  const CustomCupertinoSimpleNavBar(
      {super.key,
      required this.title,
      required this.closeButtonTitle,
      this.onLeadingButtonPress});

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
        middle: Text(
          title,
          style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
        ),
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: onLeadingButtonPress,
          child: Text(
            closeButtonTitle,
            style: CupertinoTheme.of(context).textTheme.navActionTextStyle,
          ),
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(45);

  @override
  bool shouldFullyObstruct(BuildContext context) {
    return true;
  }
}
