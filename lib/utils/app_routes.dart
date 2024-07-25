import 'package:kid_ask/view/screens/intro_screen.dart';
import 'package:kid_ask/view/screens/splash_screen.dart';

class AppRoutes {
  static const String spalshScreen = "/splash";
  static const String introScreen = "/intro";
  static var routes = {
    spalshScreen: (context) => const SplashScreen(),
    introScreen: (context) => const IntroScreen(),
  };
}
