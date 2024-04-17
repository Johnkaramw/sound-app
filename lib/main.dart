import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const TestAPP());
}

class TestAPP extends StatelessWidget {
  const TestAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
