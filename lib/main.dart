import 'package:flutter/material.dart';
import 'package:website_profile/homepage/home_page.dart';

void main() {
  runApp(const SennaProduction());
}

class SennaProduction extends StatelessWidget {
  const SennaProduction({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
