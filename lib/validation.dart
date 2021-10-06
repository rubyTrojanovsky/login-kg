import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Validation Kampus Gratis',
      home: const Validation(),
    );
  }
}

class Validation extends StatefulWidget {
  const Validation({Key? key}) : super(key: key);

  @override
  _ValidationState createState() => _ValidationState();
}

class _ValidationState extends State<Validation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4378DB),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 38, right: 10, bottom: 40),
                child: Image(
                  image: AssetImage('assets/logo-1.png'),
                  height: 42,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Validation',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Text(
            'Masukkan kode yang diberikan',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          Text(
            'melalui E-mail anda yang terdaftar',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 35, top: 16, right: 35, bottom: 14),
            child: TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                fillColor: Colors.white,
                filled: true,
                hintText: 'Kode 6 Digit',
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 35, top: 0, right: 35, bottom: 14),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/changePassword');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orangeAccent,
                    ),
                    child: Text(
                      'Kirim',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, right: 10, bottom: 40),
                child: Image(
                  image: AssetImage('assets/Saly-38.png'),
                  height: 250,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
