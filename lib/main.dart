import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_to_do_application/core/di/service_locator.dart';
import 'package:flutter_to_do_application/shared/constants/app_colors.dart';
import 'package:flutter_to_do_application/shared/routes/app_routes.dart';
import 'package:flutter_to_do_application/shared/themes/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: AppColors.lightGray3));

  await setupServiceLocator();
  runApp(ToDoApplication());
}

class ToDoApplication extends StatelessWidget {
  ToDoApplication({super.key});

  final _appRoutes = AppRoutes();

  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: _appRoutes.config(),
    );
  }
}
