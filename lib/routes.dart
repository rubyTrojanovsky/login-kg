import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';
import 'forgotPassword.dart';
import 'validation.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // jika ingin mengirim argument
    // final args = settings.arguments;
    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(builder: (_) => Login());
      case '/register':
        return MaterialPageRoute(builder: (_) => RegisterPage());
      case '/ForgotPassword':
        return MaterialPageRoute(builder: (_) => ForgotPasswordPage());
      case '/validation':
        return MaterialPageRoute(builder: (_) => Validation());
      // return MaterialPageRoute(builder: (_) => AboutPage(args));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Error page')),
      );
    });
  }
}
