import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poke_dex/ds/colors.dart';
import 'package:poke_dex/ds/text_style.dart';

abstract class StatelessPage extends StatelessWidget {
  final Color pageColor;
  final Color appbarColor;
  final Color titleColor;
  final bool showAppBar;
  final String title;

  StatelessPage(
      {Key key,
      this.title = "",
      this.showAppBar = false,
      this.pageColor = colorWhite,
      this.appbarColor = primaryColor,
      this.titleColor = colorWhite})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (showAppBar) {
      return Scaffold(
        appBar: AppBar(
          title: Text(title, style: header24Text.copyWith(color: titleColor)),
          backgroundColor: appbarColor,
        ),
        body: init(),
        backgroundColor: pageColor,
      );
    } else {
      return Scaffold(
        body: init(),
        backgroundColor: pageColor,
      );
    }
  }

  Widget init();
}
