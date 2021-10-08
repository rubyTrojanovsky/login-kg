import 'package:flutter/material.dart';
import 'package:login_app/Screens/Login/login_screen.dart';
import 'package:login_app/Screens/LupaPass/lupa_pass.dart';
import 'package:login_app/main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // jika ingin mengirim argument
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MyApp());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/lupapass':
        return MaterialPageRoute(builder: (_) => LupaPass());
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
