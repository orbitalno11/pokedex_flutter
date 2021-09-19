import 'package:flutter/cupertino.dart';
import 'package:poke_dex/core/model/pokemon_type.dart';
import 'package:poke_dex/ds/colors.dart';
import 'package:poke_dex/ds/text_style.dart';

class TypeCapsule extends StatelessWidget {
  final PokemonType type;
  final double width;
  final double height;

  TypeCapsule({Key key, @required this.type, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        height: height,
        width: width,
        color: pokemonTypeColor[type],
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
        child:
            Text(type.value, style: header14Text.copyWith(color: colorWhite)),
      ),
    );
  }
}
