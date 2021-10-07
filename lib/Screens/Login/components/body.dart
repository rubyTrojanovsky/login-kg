import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/Screens/Login/components/background.dart';
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
            child: Column(
              children: [
                TextFormField(
                  autofocus: true,
                  autocorrect: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    // icon: Icon(Icons.add_a_photo), //Untuk icon di luar field
                    prefixIcon: Icon(Icons.person), //Untuk icon di dalam field
                    // prefixText: 'Email',
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Nama Pengguna',
                    hintStyle: TextStyle(fontFamily: 'Montserrat'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
