import 'package:flutter/material.dart';
import 'package:up_todo/app/app.dart';

import 'package:up_todo/core/database/cache/cache_helper.dart';
import 'package:up_todo/core/services/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await setup();
  await sl<CacheHelper>().init();
  runApp(const UpTodo());
}
