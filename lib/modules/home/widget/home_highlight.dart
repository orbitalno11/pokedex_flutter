import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'highlight.dart';

class HomeHighlight extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeHighlightState();
  }
}

class _HomeHighlightState extends State<HomeHighlight> {
  int _currentIndex = 0;

  List cardList = [
    Highlight(
      imgUrl: "https://img.pokemondb.net/sprites/sun-moon/normal/metagross.png",
      text: "Poke'mon of The Day.",
      cardColor: Colors.red[800],
      imgAlign: Alignment.centerRight,
    ),
    Highlight(
      imgUrl: "https://cdn2.bulbagarden.net/upload/0/0c/Dream_Full_Restore_Sprite.png",
      text: "Item of The Day.",
      cardColor: Colors.blue[800],
      imgAlign: Alignment.centerRight,
    ),
    Highlight(
      imgUrl: "https://cdn2.bulbagarden.net/upload/3/3f/Omega_Ruby_Alpha_Sapphire_Steven.png",
      text: "NPC of The Day.",
      cardColor: Colors.green[800],
      imgAlign: Alignment.centerRight,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: cardList.map((card) {
          return Builder(builder: (BuildContext context) {
            return card;
          });
        }).toList(),
        options: CarouselOptions(
          height: 200.0,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          pauseAutoPlayOnTouch: true,
          aspectRatio: 2.0,
          onPageChanged: (index, reason) {
            setState(() {
              _currentIndex = index;
            });
          },
        ));
  }
}
