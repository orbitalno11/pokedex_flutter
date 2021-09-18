import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poke_dex/ds/text_style.dart';

class Highlight extends StatelessWidget {
  final String imgUrl;
  final String text;
  final Alignment imgAlign;
  final Color cardColor;

  Highlight({Key key, this.imgUrl, this.text, this.imgAlign, this.cardColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 300,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(
          children: [
            Container(
              alignment: imgAlign,
              decoration: BoxDecoration(color: cardColor),
              child: Image.network(
                imgUrl,
                width: 200,
              ),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                        Colors.black.withOpacity(0.7),
                        Colors.transparent
                      ],
                          stops: [
                        0.4,
                        0.9
                      ])),
                  child: Text(
                    text,
                    style: header24Text.copyWith(color: Colors.white),
                    maxLines: 1,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                  ),
                )),
          ],
        ),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 5,
        margin: EdgeInsets.all(10.0),
      ),
    );
  }
}
