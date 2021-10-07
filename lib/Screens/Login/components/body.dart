import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/Screens/Login/components/background.dart';
import 'package:login_app/Screens/Login/components/text_field.dart';
import 'package:login_app/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Masuk Akun',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: kBlue,
                ),
              ),
            ],
          ),
          Form(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  LoginTextField(
                    focus: true,
                    correct: true,
                    obscure: false,
                    text: 'Nama Pengguna',
                    icon: Icons.person,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: LoginTextField(
                      focus: false,
                      correct: false,
                      obscure: true,
                      text: 'Kata Sandi',
                      icon: Icons.lock,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
