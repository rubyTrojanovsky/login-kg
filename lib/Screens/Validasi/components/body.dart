import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/components/background.dart';
import 'package:login_app/components/header_1.dart';
import 'package:login_app/components/text_field.dart';
import 'package:login_app/components/primary_button.dart';
import 'package:login_app/constants.dart';

class Body extends StatelessWidget {
  Body({
    Key? key,
  }) : super(key: key);

  final TextEditingController _kodeController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: MainBackground(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: HeaderLogin(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Validasi',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: kBlue,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Text(
                    'Masukkan kode yang diberikan melalui E-mail anda yang terdaftar',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: kLightBlue,
                    ),
                  ),
                ),
              ],
            ),
            Form(
              key: _formKey,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: PrimaryTextField(
                        focus: false,
                        correct: false,
                        obscure: true,
                        icon: Icons.mail,
                        text: 'Kode',
                        controller: _kodeController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Kode harus diisi!';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: PrimaryButton(
                        text: 'Kirim',
                        press: () {
                          Navigator.pushNamed(context, '/change-password');
                        },
                        color: kOrange,
                        textColor: Colors.black,
                        width: size.width,
                        shadowColor: Colors.black,
                        borderColor: kOrange,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
