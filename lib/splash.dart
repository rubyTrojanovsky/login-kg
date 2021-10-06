import 'package:flutter/material.dart';
import 'register.dart';
import 'login.dart';
import 'package:flutter/src/material/colors.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4378DB),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              height: 100,
              image: AssetImage("images/logo.png"),
            ),
            SizedBox(height: 50),
            SizedBox(
              width: 300,
              child: Text(
                "Selamat datang para mahasiswa Kampus Gratis yang siap menjadi penerus bangsa Indonesia!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              child: Text("Masuk"),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(220, 50),
                primary: Colors.orange[400],
                onPrimary: Colors.black,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Daftar"),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(220, 50),
                primary: Colors.white,
                onPrimary: Colors.black,
                side: BorderSide(
                  color: Color(0xFFFFB74D),
                  width: 2,
                ),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
            ),
          ],
        ),
      ),
    );
  }
}
