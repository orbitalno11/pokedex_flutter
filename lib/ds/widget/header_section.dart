import 'package:flutter/cupertino.dart';
import 'package:poke_dex/ds/colors.dart';
import 'package:poke_dex/ds/text_style.dart';

class HeaderSection extends StatelessWidget {
  final String headerText;
  final Color headerColor;
  final Color headerTextColor;

  HeaderSection(
      {Key key,
      @required this.headerText,
      this.headerColor = primaryColor,
      this.headerTextColor = colorWhite})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: headerColor,
      padding: EdgeInsets.only(left: 10.0, top: 5.0, right: 10.0, bottom: 5.0),
      child: Text(headerText,
          style: header18Text.copyWith(color: headerTextColor)),
    );
  }
}
