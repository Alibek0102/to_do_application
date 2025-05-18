import 'package:auto_route/auto_route.dart';
import 'package:flutter_to_do_application/shared/routes/app_routes.gr.dart';

@AutoRouterConfig()
class AppRoutes extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: TasksRoute.page, initial: true, path: '/tasks'),
        CustomRoute(
            path: '/create-task',
            page: CreateTaskRoute.page,
            transitionsBuilder: TransitionsBuilders.slideBottom,
            fullscreenDialog: true,
            durationInMilliseconds: 300)
      ];
}
