import 'package:hive_flutter/hive_flutter.dart';

class HiveClient {
  static const _boxName = 'tasksBox';
  late Box box;

  Future<void> init() async {
    await Hive.initFlutter();
    box = await Hive.openBox(_boxName);
  }
}
