import 'package:flutter/widgets.dart';
import 'package:magnit_test_app/internal/utils/hive_initializer.dart';

class Bootstrap{
  static Future<void> init(Widget Function() builder) async {
    await HiveMockInitializer.init();
    HiveMockInitializer.setupData();
    runApp(builder());
  }
}