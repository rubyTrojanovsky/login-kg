import 'package:flutter/material.dart';
import 'package:login_app/Screens/Login/login_screen.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_app/Screens/Welcome/components/background.dart';
import 'package:login_app/components/primary_button.dart';
import 'package:login_app/constants.dart';
import 'package:login_app/routes.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: Image(
                    image: AssetImage('assets/images/main-logo.png'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Text(
                'Selamat Datang',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: kBlue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                'Para mahasiswa Kampus Gratis yang siap menjadi penerus bangsa Indonesia!',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: PrimaryButton(
                text: 'Masuk',
                press: () {
                  Navigator.pushNamed(context, '/login');
                },
                color: kOrange,
                textColor: Colors.black,
                width: size.width * 0.5,
                shadowColor: Colors.black,
                borderColor: kOrange,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: PrimaryButton(
                  text: 'Daftar',
                  press: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  width: size.width * 0.5,
                  shadowColor: Colors.black,
                  borderColor: kOrange),
            )

            // SvgPicture.asset("assetName")
          ],
        ),
      ),
    );
  }
}
