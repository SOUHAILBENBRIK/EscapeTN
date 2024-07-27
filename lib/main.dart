import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:get/get.dart';

import 'package:kid_ask/controller/app_binding.dart';
import 'package:kid_ask/firebase_options.dart';
import 'package:kid_ask/utils/app_routes.dart';
import 'package:kid_ask/utils/app_theme.dart';
import 'package:kid_ask/utils/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Gemini.init(apiKey: Constants.geminiApiKey);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getLightTheme(),
      initialRoute: AppRoutes.spalshScreen,
      routes: AppRoutes.routes,
      initialBinding: AppBinding(),
    );
  }
}

