import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:toku_app/models/phrase.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.phrase});

  final PhraseModel phrase;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.blue,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(phrase.jbName,
                    style: const TextStyle(color: Colors.white, fontSize: 18)),
                Text(phrase.enName,
                    style: const TextStyle(color: Colors.white, fontSize: 18))
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: (){
            final player = AudioPlayer();
            player.play(AssetSource(phrase.sound));
          },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
              ),
            )
        ],
      ),
    );
  }
}
