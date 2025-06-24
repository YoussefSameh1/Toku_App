import 'package:flutter/material.dart';
import 'package:toku_app/components/list_item.dart';
import 'package:toku_app/models/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
        image: 'assets/images/colors/color_black.png',
        jbName: 'ブラック(Burakku)',
        enName: 'Black',
        sound: 'sounds/colors/black.wav'),
    ItemModel(
        image: 'assets/images/colors/color_brown.png',
        jbName: '茶色(Chairo)',
        enName: 'Brown',
        sound: 'sounds/colors/brown.wav'),
    ItemModel(
        image: 'assets/images/colors/color_green.png',
        jbName: '緑(Midori)',
        enName: 'Green',
        sound: 'sounds/colors/green.wav'),
    ItemModel(
        image: 'assets/images/colors/color_red.png',
        jbName: '赤(Aka)',
        enName: 'Red',
        sound: 'sounds/colors/red.wav'),
    ItemModel(
        image: 'assets/images/colors/color_white.png',
        jbName: '白(Shiro)',
        enName: 'White',
        sound: 'sounds/colors/white.wav'),
    ItemModel(
        image: 'assets/images/colors/color_yellow.png',
        jbName: '黄色(Kiiro)',
        enName: 'Yellow',
        sound: 'sounds/colors/yellow.wav'),
    ItemModel(
        image: 'assets/images/colors/color_gray.png',
        jbName: 'グレー(Gurē)',
        enName: 'Gray',
        sound: 'sounds/colors/gray.wav'),
    ItemModel(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jbName: 'ほこりっぽい黄色',
        enName: 'Dusty yellow',
        sound: 'sounds/colors/dusty yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Colors',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.brown,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, i) {
          return ListItem(color: Colors.purple, number: numbers[i]);
        },
      ),
    );
  }
}
