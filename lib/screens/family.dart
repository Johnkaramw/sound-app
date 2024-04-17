import 'package:flutter/material.dart';
import 'package:test_app/components/items.dart';
import 'package:test_app/models/class_model.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({Key? key}) : super(key: key);
  final List<Number> numbers = const [
    Number(
        sounds: 'sounds/family_members/daughter.wav',
        image: 'images/family_members/family_daughter.png',
        jpName: 'daughter',
        enname: 'maugther'),
    Number(
        sounds: 'sounds/family_members/father.mp3',
        image: 'images/family_members/family_daughter.png',
        jpName: 'father',
        enname: 'father'),
    Number(
        sounds: 'sounds/family_members/grand father.wav',
        image: 'images/family_members/family_grandfather.png',
        jpName: 'grand father ',
        enname: 'grand father'),
    Number(
        sounds: 'sounds/family_members/grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'grand mother',
        enname: 'grand mother'),
    Number(
        sounds: 'sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'mother',
        enname: 'mother'),
    Number(
        sounds: 'sounds/family_members/older bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'older bother ital',
        enname: 'older bother'),
    Number(
        sounds: 'sounds/family_members/older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'older sister ital',
        enname: 'older sister'),
    Number(
        sounds: 'sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'son ital',
        enname: 'son'),
    Number(
        sounds: 'sounds/family_members/younger brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'younger brohter ital',
        enname: 'younger brohter'),
    Number(
      sounds: 'sounds/family_members/younger sister.wav',
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'younger sister',
      enname: 'younger sister',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Family member',
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
