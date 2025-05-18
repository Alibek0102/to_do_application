import 'package:flutter/cupertino.dart';
import 'package:flutter_to_do_application/shared/themes/app_text_styles.dart';

class SegmentedControlItem extends StatelessWidget {
  final String title;

  const SegmentedControlItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Text(
        title,
        style: AppTextStyles.button,
      ),
    );
  }
}
