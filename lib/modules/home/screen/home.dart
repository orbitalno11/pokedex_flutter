import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poke_dex/ds/text_style.dart';
import 'package:poke_dex/ds/widget/image_card.dart';
import 'package:poke_dex/modules/home/widget/home_highlight.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Poke'dex", style: header36Text),
      ),
      body: ListView(
        children: [
          HomeHighlight(),
          ImageCard(imgUrl: "assets/images/rotom.png", title: "Poke'dex"),
          ImageCard(imgUrl: "assets/images/rotom.png", title: "Items data"),
          ImageCard(imgUrl: "assets/images/rotom.png", title: "NPC Data")
        ],
      ),
    );
  }
}
