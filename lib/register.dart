import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kampus Gratis',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const RegisterPage(title: 'Flutter Demo Home Page'),
      home: const RegisterPage(),
    );
  }
}

class RegisterPage extends StatefulWidget {
  // const RegisterPage({Key? key, required this.title}) : super(key: key);
  const RegisterPage({Key? key}) : super(key: key);
  // final String title;

  @override
  State<RegisterPage> createState() => _RegisterState();
}

class _RegisterState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4378DB),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 10),
                    child: Image(
                      image: AssetImage('assets/logo.png'),
                      height: 42,
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Text(
                      'Daftar Akun',
                      style: TextStyle(
                        fontFamily: 'Monserrat',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                    border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    // icon: Icon(Icons.add_a_photo),
                    prefixIcon: Icon(Icons.person),
                    // prefixText: 'Email',
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Nama Pengguna',
                    hintStyle: TextStyle(fontFamily: 'Montserrat'),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                    border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    // icon: Icon(Icons.add_a_photo),
                    prefixIcon: Icon(Icons.email),
                    // prefixText: 'Email',
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'E-mail',
                    hintStyle: TextStyle(fontFamily: 'Montserrat'),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                    border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    // icon: Icon(Icons.add_a_photo),
                    prefixIcon: Icon(Icons.lock),
                    // prefixText: 'Email',
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Kata Sandi',
                    hintStyle: TextStyle(fontFamily: 'Montserrat'),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                    border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    // icon: Icon(Icons.add_a_photo),
                    prefixIcon: Icon(Icons.lock),
                    // prefixText: 'Email',
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Ulangi Kata Sandi',
                    hintStyle: TextStyle(fontFamily: 'Montserrat'),
                  ),
                ),
              ),

              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Color(0XFFFDB515),
                          onPrimary: Colors.black,
                          onSurface: Colors.blue,
                          shadowColor: Colors.yellow,
                          minimumSize: Size(0, 50),
                          alignment: Alignment.center,
                          animationDuration: const Duration(
                              milliseconds:
                                  200), //Durasi tombolnya ke angkat pas di klik
                          elevation: 2, //Kadar ketinggian elevasi nya
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          // side: BorderSide(color: Colors.red.shade900, width: 2),
                          // padding: EdgeInsets.all(10),
                          // visualDensity: VisualDensity.compact, //Kepadatan sisi dengan dalamnya
                        ),
                        child: const Text(
                          'Masuk',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          )
        ],
      ),
    );
  }
}