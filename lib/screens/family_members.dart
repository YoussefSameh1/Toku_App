import 'package:flutter/material.dart';
import 'package:toku_app/components/list_item.dart';
import 'package:toku_app/models/item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
        image: 'assets/images/family_members/family_father.png',
        jbName: '父親(Chichioya)',
        enName: 'Father',
        sound: 'sounds/family_members/father.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_mother.png',
        jbName: '母親(Hahaoya)',
        enName: 'Mother',
        sound: 'sounds/family_members/mother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_daughter.png',
        jbName: '娘(Musume)',
        enName: 'Daughter',
        sound: 'sounds/family_members/daughter.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_son.png',
        jbName: '息子(Musuko)',
        enName: 'Son',
        sound: 'sounds/family_members/son.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_grandfather.png',
        jbName: 'お爺さん(Ojīsan)',
        enName: 'Grandfather',
        sound: 'sounds/family_members/grand father.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_grandmother.png',
        jbName: '祖母(Sobo)',
        enName: 'Grandmother',
        sound: 'sounds/family_members/grand mother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_older_brother.png',
        jbName: '兄さん(Nīsan)',
        enName: 'Older brother',
        sound: 'sounds/family_members/older brother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_younger_brother.png',
        jbName: '弟(Otōto)',
        enName: 'Younger brother',
        sound: 'sounds/family_members/younger brother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_older_sister.png',
        jbName: '姉(Ane)',
        enName: 'Older sister',
        sound: 'sounds/family_members/older sister.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_younger_sister.png',
        jbName: '妹(Imōto)',
        enName: 'Younger sister',
        sound: 'sounds/family_members/younger sister.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Family Members',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.brown,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Expanded(
        child: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, i) {
            return ListItem(color: Colors.green, number: numbers[i]);
          },
        ),
      ),
    );
  }
}
