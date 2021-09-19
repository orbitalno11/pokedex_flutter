import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:poke_dex/modules/home/screen/home.dart';
import 'package:poke_dex/modules/pokemon_detail/screen/pokemon_detail.dart';

import 'ds/colors.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PokeDex',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: primaryColor,
        fontFamily: "Prompt",
      ),
      home: Home(),
    );
  }
}
