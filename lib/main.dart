import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 final String svgPhoto = 'assets/images/logo.svg';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter First Test',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(svgPhoto,
            width: 150,
            ),
            const Text(
              'First Flutter Project',
              style: TextStyle(
                  fontSize: 35,
                  color: Color.fromARGB(255, 21, 0, 62),
                  fontFamily: 'Poppins',
                  letterSpacing: 2),
            ),
            const Text(
              'Flutter Test',
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 40,
                  fontStyle: FontStyle.italic),
            )
          ],
        )),
      ),
    );
  }
}
