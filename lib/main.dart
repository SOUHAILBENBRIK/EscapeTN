import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kid_ask/firebase_options.dart';
import 'package:kid_ask/utils/app_routes.dart';
import 'package:kid_ask/utils/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getLightTheme(),
      initialRoute: AppRoutes.spalshScreen,
      routes: AppRoutes.routes,
    );
  }
}

