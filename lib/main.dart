import 'package:flutter/material.dart';
import 'character.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  List<Character> alphabet = [
    Character(character: "a", color: const Color(0xff4CB050)),
    Character(character: "b", color: const Color(0xff2495F1)),
    Character(character: "c", color: const Color(0xffF44236)),
    Character(character: "d", color: const Color(0xffFF9700)),
    Character(character: "e", color: const Color(0xff9C28B1)),
    Character(character: "f", color: const Color(0xffFFEB3C)),
    Character(character: "g", color: const Color(0xff009788)),
    Character(character: "h", color: const Color(0xff00BCD5)),
    Character(character: "i", color: const Color(0xff3F51B5)),
    Character(character: "j", color: const Color(0xffFEC107)),
    Character(character: "k", color: const Color(0xffCDDC39)),
    Character(character: "l", color: const Color(0xffFE5722)),
    Character(character: "m", color: const Color(0xffEA1E63)),
    Character(character: "n", color: const Color(0xff795547)),
    Character(character: "o", color: const Color(0xff9E9E9E)),
    Character(character: "p", color: const Color(0xff438AFE)),
    Character(character: "q", color: const Color(0xff69F0AE)),
    Character(character: "r", color: const Color(0xff673BB7)),
    Character(character: "s", color: const Color(0xff8BC24A)),
    Character(character: "t", color: const Color(0xff607D8B)),
    Character(character: "u", color: const Color(0xff03A9F5)),
    Character(character: "v", color: const Color(0xffFFAB40)),
    Character(character: "w", color: const Color(0xffE040FC)),
    Character(character: "x", color: const Color(0xff3FC4FF)),
    Character(character: "y", color: const Color(0xffB2FF59)),
    Character(character: "z", color: const Color(0xffFFFF00)),
    Character(character: "0", color: const Color(0xffFF5353)),
    Character(character: "1", color: const Color(0xff68F0AE)),
    Character(character: "2", color: const Color(0xff438AFE)),
    Character(character: "3", color: const Color(0xffFFAB40)),
    Character(character: "4", color: const Color(0xffFF4181)),
    Character(character: "5", color: const Color(0xff4CB050)),
  ];

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: (alphabet.length / 4).ceil(),
            itemBuilder: (context, index) {
              final items = alphabet.skip(index * 4).take(4).toList();
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: items.map((character) {
                    return Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                          color: character.color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 100,
                        child: Center(
                          child: Text(
                            character.character,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
