// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/cupertino.dart' as _i4;
import 'package:flutter_to_do_application/features/tasks/presentation/screens/create_task_screen.dart'
    as _i1;
import 'package:flutter_to_do_application/features/tasks/presentation/screens/tasks_screen.dart'
    as _i2;

/// generated route for
/// [_i1.CreateTaskScreen]
class CreateTaskRoute extends _i3.PageRouteInfo<CreateTaskRouteArgs> {
  CreateTaskRoute({
    _i4.Key? key,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          CreateTaskRoute.name,
          args: CreateTaskRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CreateTaskRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreateTaskRouteArgs>(
          orElse: () => const CreateTaskRouteArgs());
      return _i1.CreateTaskScreen(key: args.key);
    },
  );
}

class CreateTaskRouteArgs {
  const CreateTaskRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'CreateTaskRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.TasksScreen]
class TasksRoute extends _i3.PageRouteInfo<void> {
  const TasksRoute({List<_i3.PageRouteInfo>? children})
      : super(
          TasksRoute.name,
          initialChildren: children,
        );

  static const String name = 'TasksRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.TasksScreen();
    },
  );
}
