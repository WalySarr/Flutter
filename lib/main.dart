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
    return MaterialApp(home: HomePage(svgPhoto: svgPhoto));
  }
}

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Planning d'évenements",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: const Center(
        child: Text(
          "disponible prochainement...",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.svgPhoto,
  });

  final String svgPhoto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          SvgPicture.asset(
            svgPhoto,
            width: 120,
          ),
          const Text(
            'First Flutter Project',
            style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 21, 0, 62),
                fontFamily: 'Poppins',
                letterSpacing: 2),
          ),
          const Text(
            'Flutter Test',
            style: TextStyle(
                color: Color.fromRGBO(155, 120, 15, 1),
                fontSize: 40,
                fontStyle: FontStyle.italic),
          ),
          const Padding(padding: EdgeInsets.all(5)),
          ElevatedButton.icon(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.green),
                padding: MaterialStatePropertyAll(EdgeInsets.all(15))),
            onPressed: () => {
              Navigator.push(context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => const EventPage()
                    )
                  )
            },
            label: const Text(
              'Afficher le planning',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            icon: const Icon(Icons.calendar_month),
          )
        ],
      )),
    );
  }
}
