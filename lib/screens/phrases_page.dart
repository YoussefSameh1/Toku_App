import 'package:flutter/material.dart';
import 'package:toku_app/components/phrases_item.dart';
import 'package:toku_app/models/phrase.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<PhraseModel> phrases = const [
    PhraseModel(
        jbName: '来ますか',
        enName: 'Are you coming',
        sound: 'sounds/phrases/are_you_coming.wav'),
    PhraseModel(
        jbName: 'はい、行きます',
        enName: 'Yes, I am coming',
        sound: 'sounds/phrases/yes_im_coming.wav'),
    PhraseModel(
        jbName: 'あなたの名前は何ですか',
        enName: 'What is your name',
        sound: 'sounds/phrases/what_is_your_name.wav'),
    PhraseModel(
        jbName: 'どこに行くの',
        enName: 'Where are you going',
        sound: 'sounds/phrases/where_are_you_going.wav'),
    PhraseModel(
        jbName: 'ご気分はいかがですか。',
        enName: 'How are you feeling',
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    PhraseModel(
        jbName: 'プログラミングは簡単',
        enName: 'Programming is easy',
        sound: 'sounds/phrases/programming_is_easy.wav'),
    PhraseModel(
        jbName: '私はプログラミングが大好きです',
        enName: 'I love programming',
        sound: 'sounds/phrases/i_love_programming.wav'),
    PhraseModel(
        jbName: '私はアニメが大好きです',
        enName: 'I love anime',
        sound: 'sounds/phrases/i_love_anime.wav'),
    PhraseModel(
        jbName: '購読をお忘れなく',
        enName: 'Do not forget to subscribe',
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Phrases',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.brown,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, i) {
          return PhrasesItem(phrase: phrases[i]);
        },
      ),
    );
  }
}
