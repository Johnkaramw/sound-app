import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:test_app/models/class_model.dart';

class ListItem extends StatefulWidget {
  final Number items;
  final Color color;
  ListItem({
    Key? key,
    required this.items,
    required this.color,
  });

  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color.fromARGB(255, 233, 136, 136),
      child: Row(
        children: [
          Container(
            color: const Color.fromARGB(255, 10, 151, 233),
            child: Image.asset(widget.items.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.items.jpName,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  widget.items.enname,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 10,
          ),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(widget.items.sounds));
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Color.fromARGB(255, 3, 236, 15),
              size: 30,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({Key? key, required this.items, required this.colors})
      : super(key: key);
  final phrases items;
  final Color colors;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 233, 136, 136),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  items.jpName,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  items.enname,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 10,
          ),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(items.sounds));
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Color.fromARGB(255, 3, 236, 15),
              size: 30,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
