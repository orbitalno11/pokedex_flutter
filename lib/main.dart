import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:poke_dex/modules/home/screen/home.dart';

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
        primaryColor: Colors.red[800],
        fontFamily: "Prompt",
      ),
      home: Home(),
    );
  }
}
