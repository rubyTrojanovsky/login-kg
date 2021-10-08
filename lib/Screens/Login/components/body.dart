import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_app/Screens/Login/components/background.dart';
import 'package:login_app/components/text_field.dart';
import 'package:login_app/components/primary_button.dart';
import 'package:login_app/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios),
                      ),
                      Image(
                        height: 50,
                        image: AssetImage("assets/images/small-logo.png"),
                      ),
                    ],
                  ),
            ),
              
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
                      focus: false,
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
                    PrimaryButton(
                      text: 'Masuk',
                      press: () {},
                      color: kOrange,
                      textColor: Colors.black,
                      width: size.width,
                      shadowColor: Colors.black,
                      borderColor: kOrange,
                    ),
                    SizedBox(height: size.height*0.02,),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                          text: 'Lupa kata sandi, ',
                          style: TextStyle(color: Colors.black,
                              fontSize: 12),),
                          
                          TextSpan(
                            text: 'klik disini',
                            style: TextStyle(
                              color: kOrange,
                              fontSize: 12),
                            recognizer: TapGestureRecognizer()
                            ..onTap = (){
                              Navigator.pushNamed(context, '/lupapass');
                            }
                          )
                          ],
                        )
                        
                        
                        ),
                    SizedBox(height: size.height*0.02,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          width: size.width * 0.3,
                          image: AssetImage('assets/images/thick-line.png'),
                        ),
                        SizedBox(
                          width: size.width*0.05,
                        ),
                        Text(
                          'Atau',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: size.width*0.05,
                        ),
                        Image(
                          width: size.width * 0.3,
                          image: AssetImage('assets/images/thick-line.png'),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height*0.02,),
                    PrimaryButton(
                      text: "Masuk dengan Google", 
                      press: () {}, 
                      color: Colors.white, 
                      textColor: Colors.black, 
                      width: size.width,
                      shadowColor: Colors.black,
                      borderColor: kOrange
                      ),

                      SizedBox(height: size.height*0.02,),
                      PrimaryButton(
                      text: "Masuk dengan Facebook", 
                      press: () {}, 
                      color: Colors.white, 
                      textColor: Colors.black, 
                      width: size.width,
                      shadowColor: Colors.black,
                      borderColor: kOrange)
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
