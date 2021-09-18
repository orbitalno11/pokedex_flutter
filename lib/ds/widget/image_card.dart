import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poke_dex/ds/text_style.dart';

class ImageCard extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String description;
  final double width;
  final double height;
  final BoxFit fit;

  ImageCard(
      {Key key,
      @required this.imgUrl,
      @required this.title,
      this.description,
      this.width,
      this.height,
      this.fit = BoxFit.contain})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(imgUrl, fit: this.fit),
            ),
            Positioned(bottom: 0, right: 0, left: 0, child: buildDescription()),
          ],
        ),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 5,
        margin: EdgeInsets.all(10.0),
      ),
    );
  }

  Widget buildDescription() {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.black.withOpacity(0.7), Colors.transparent],
              stops: [0.4, 0.9])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            this.title,
            style: header24Text.copyWith(color: Colors.white),
            maxLines: 1,
            softWrap: false,
            overflow: TextOverflow.ellipsis,
          ),
          if (description != null)
            Text(
              this.description,
              style: text12.copyWith(color: Colors.white),
              maxLines: 2,
              softWrap: false,
              overflow: TextOverflow.ellipsis,
            )
        ],
      ),
    );
  }
}
