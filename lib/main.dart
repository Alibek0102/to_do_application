import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do_application/core/di/service_locator.dart';
import 'package:flutter_to_do_application/features/tasks/domain/use_cases/add_tasks.dart';
import 'package:flutter_to_do_application/features/tasks/domain/use_cases/get_tasks.dart';
import 'package:flutter_to_do_application/features/tasks/domain/use_cases/remove_tasks.dart';
import 'package:flutter_to_do_application/features/tasks/domain/use_cases/update_task.dart';
import 'package:flutter_to_do_application/features/tasks/presentation/blocs/filter_blocs/filter_bloc.dart';
import 'package:flutter_to_do_application/features/tasks/presentation/blocs/tasks_blocs/tasks_bloc.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => FilterBloc()),
        BlocProvider(
            create: (_) => TasksBloc(
                addTask: getIt.get<AddTasks>(),
                getTasks: getIt.get<GetTasks>(),
                removeTask: getIt.get<RemoveTasks>(),
                updateTask: getIt.get<UpdateTask>()))
      ],
      child: CupertinoApp.router(
        theme: appTheme,
        debugShowCheckedModeBanner: false,
        routerConfig: _appRoutes.config(),
      ),
    );
  }
}
