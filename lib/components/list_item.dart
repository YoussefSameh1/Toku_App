import 'package:flutter/material.dart';
import 'package:toku_app/models/item.dart';
import 'package:audioplayers/audioplayers.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.number, required this.color});

  final ItemModel number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: color,
      child: Row(
        children: [
          Container(
              color: const Color.fromARGB(255, 226, 222, 191),
              child: Image.asset(number.image)),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(number.jbName,
                    style: const TextStyle(color: Colors.white, fontSize: 18)),
                Text(number.enName,
                    style: const TextStyle(color: Colors.white, fontSize: 18))
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: (){
            //play sound
            final player = AudioPlayer();
            player.play(AssetSource(number.sound));
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
