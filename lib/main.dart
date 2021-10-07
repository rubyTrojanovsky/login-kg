import 'package:flutter/material.dart';
import 'package:login_app/Screens/Welcome/welcome_screen.dart';
import 'package:login_app/constants.dart';
import 'package:login_app/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
      title: 'Kampus Gratis',
      theme: ThemeData(
        primaryColor: kBlue,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Montserrat',
      ),
      home: const WelcomeScreen(),
      // home: WelcomeScreen(),
      // home: LoginPage(),
      // home: Routing(),
    );
  }
}

// class Routing extends StatelessWidget {
//   const Routing({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Kampus Gratis',
//       theme: ThemeData(
//         primaryColor: kBlue,
//         scaffoldBackgroundColor: Colors.white,
//         fontFamily: 'Montserrat',
//       ),
//       home: WelcomeScreen(),
//     );
//   }
// }
