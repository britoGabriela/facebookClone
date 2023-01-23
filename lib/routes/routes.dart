import 'package:clone_fb/screens/forgot_password1.dart';
import 'package:clone_fb/screens/forgot_password2.dart';
import 'package:clone_fb/screens/login.dart';
import 'package:clone_fb/screens/register.dart';
import 'package:clone_fb/screens/splash/splash_screen.dart';
import 'package:clone_fb/screens/teste_de_codigo.dart';
import 'package:get/get.dart';

class Routes {
  static const String splashScreen = '/splash-screen';
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword1 = '/forgot-password1';
  static const String forgotPassword2 = '/forgot-password2';

  static const String teste = '/teste';

  static String getSplashScreen() => splashScreen;
  static String getLogin() => login;
  static String getRegister() => register;
  static String getForgotPassword1() => forgotPassword1;
  static String getForgotPassword2() => forgotPassword2;

  static String getTeste() => teste;

  static List<GetPage> routes = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: login,
      page: () => Login(),
      transition: Transition.fade,
    ),
    GetPage(
      name: register,
      page: () => Register(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: forgotPassword1,
      page: () => ForgotPassword1(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: forgotPassword2,
      page: () => ForgotPassword2(),
      transition: Transition.noTransition,
    ),

    
    GetPage(
      name: teste,
      page: () => Teste(),
      transition: Transition.noTransition,
    ),
  ];
}
