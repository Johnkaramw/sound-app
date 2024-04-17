import 'package:flutter/material.dart';
import 'package:test_app/components/category_item.dart';
import 'package:test_app/screens/colors.dart';
import 'package:test_app/screens/family.dart';
import 'package:test_app/screens/number.dart';
import 'package:test_app/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 255, 42),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 171, 211, 155),
        title: const Center(
          child: Text(
            'T o k u 👀',
            style: TextStyle(
              fontSize: 40,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Category(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumberPage();
              }));
            },
            text: 'Numbers',
            color: const Color.fromARGB(255, 78, 143, 90),
          ),
          Category(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilyPage();
              }));
            },
            text: 'Family Members',
            color: const Color.fromARGB(255, 51, 134, 66),
          ),
          Category(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ColorPage();
              }));
            },
            text: 'Colors',
            color: const Color.fromARGB(255, 51, 134, 66),
          ),
          Category(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PhasesPage();
              }));
            },
            text: 'Phrases',
            color: const Color.fromARGB(255, 25, 117, 41),
          ),
        ],
      ),
    );
  }
}
