import 'package:flutter/material.dart';
import 'package:test_app/components/items.dart';
import 'package:test_app/models/class_model.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({Key? key}) : super(key: key);
  final List<Number> numbers = const [
    Number(
        sounds: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'grand',
        enname: 'grand'),
    Number(
        sounds: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'brown',
        enname: 'brown'),
    Number(
        sounds: 'sounds/colors/dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'dusty yellow',
        enname: 'dusty yellow'),
    Number(
        sounds: 'sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'gray',
        enname: 'gray'),
    Number(
        sounds: 'sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'green',
        enname: 'green'),
    Number(
        sounds: 'sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'red',
        enname: 'red'),
    Number(
        sounds: 'sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'white',
        enname: 'white'),
    Number(
      sounds: 'sounds/colors/yellow.wav',
      image: 'assets/images/colors/yellow.png',
      jpName: 'yellow',
      enname: 'yellow',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'The Colors',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 39, 118, 221),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListItem(
            color: const Color.fromARGB(255, 51, 134, 66),
            items: numbers[index],
          );
        },
      ),
    );
  }
}
