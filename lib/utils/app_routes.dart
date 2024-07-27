import 'package:kid_ask/view/screens/forget_password.dart';
import 'package:kid_ask/view/screens/intro_screen.dart';
import 'package:kid_ask/view/screens/login_screen.dart';
import 'package:kid_ask/view/screens/main_screen.dart';
import 'package:kid_ask/view/screens/sign_up_screen.dart';
import 'package:kid_ask/view/screens/splash_screen.dart';

class AppRoutes {
  static const String spalshScreen = "/splash";
  static const String introScreen = "/intro";
  static const String signUpScreen = "/signup";
  static const String loginScreen = "/login";
  static const String forgetPasswordScreen = "/forgetpassword";
  static const String mainScreen = "/main";
  static var routes = {
    spalshScreen: (context) => const SplashScreen(),
    introScreen: (context) => const IntroScreen(),
    loginScreen: (context) => const LoginScreen(),
    signUpScreen: (context) => const SignUpScreen(),
    forgetPasswordScreen: (context) => const ForgetPasswordScreen(),
    mainScreen: (context) => const MainScreen()
  };
}
