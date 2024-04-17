import 'package:flutter/material.dart';
import 'package:test_app/components/items.dart';
import 'package:test_app/models/class_model.dart';
class NumberPage extends StatelessWidget {
  const NumberPage({Key? key}) : super(key: key);
  final List<Number> numbers = const [
    Number(
        sounds: 'sounds/numbers/number_one_sound.mp3',
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enname: 'one'),
    Number(
        sounds: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        jpName: 'te',
        enname: 'two'),
    Number(
        sounds: 'sounds/numbers/number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        jpName: '3',
        enname: 'three'),
    Number(
        sounds: 'sounds/numbers/number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        jpName: '4',
        enname: 'four'),
    Number(
        sounds: 'sounds/numbers/number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        jpName: '5',
        enname: 'five'),
    Number(
        sounds: 'sounds/numbers/number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        jpName: '6',
        enname: 'six'),
    Number(
        sounds: 'sounds/numbers/number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        jpName: '7',
        enname: 'sevn'),
    Number(
        sounds: 'sounds/numbers/number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jpName: '8',
        enname: 'eight'),
    Number(
        sounds: 'sounds/numbers/number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        jpName: '9',
        enname: 'nine'),
    Number(
        sounds: 'sounds/numbers/number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        jpName: '10',
        enname: 'ten',
        ),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 39, 118, 221),
          title: const Text(
            'Numbers',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return ListItem(
            color: const Color.fromARGB(255, 78, 143, 90),
              items: numbers[index],
            );
          },
        ),
      );
    
  }
}
