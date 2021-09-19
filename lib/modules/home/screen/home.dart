import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poke_dex/core/stateless_page.dart';
import 'package:poke_dex/ds/colors.dart';
import 'package:poke_dex/ds/widget/image_card.dart';
import 'package:poke_dex/modules/home/widget/home_highlight.dart';

class Home extends StatelessPage {
  Home({Key key}) : super(key: key, pageColor: primaryColor);

  @override
  Widget init() {
    return ListView(
      children: [
        HomeHighlight(),
        ImageCard(imgUrl: "assets/images/rotom.png", title: "Poke'dex"),
        ImageCard(imgUrl: "assets/images/rotom.png", title: "Items data"),
        ImageCard(imgUrl: "assets/images/rotom.png", title: "NPC Data")
      ],
    );
  }
}
