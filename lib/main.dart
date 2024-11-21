import 'package:cine_scope_localization/strings.g.dart';
import 'package:cinescope/core/di/di_container.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app/cine_scope_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await initDi();

  runApp(TranslationProvider(child: const CineScopeApp()));
}
