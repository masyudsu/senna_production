import 'package:flutter/material.dart';
import 'package:website_profile/homePage/homePage.dart';

void main() {
  runApp(const sennaWeb());
}

class sennaWeb extends StatelessWidget {
  const sennaWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Senna Event & Wedding Organizer",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: const HomePage(),
    );
  }
}
