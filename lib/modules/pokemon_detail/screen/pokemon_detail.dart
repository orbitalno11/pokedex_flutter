import 'package:charts_flutter/flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:poke_dex/core/model/pokemon_type.dart';
import 'package:poke_dex/core/stateless_page.dart';
import 'package:poke_dex/ds/colors.dart';
import 'package:poke_dex/ds/text_style.dart';
import 'package:poke_dex/ds/widget/header_section.dart';
import 'package:poke_dex/ds/widget/type_capsule.dart';
import 'package:poke_dex/modules/pokemon_detail/model/chart/statistic_chart_model.dart';
import 'package:poke_dex/modules/pokemon_detail/model/ui_ability.dart';

class PokemonDetail extends StatelessPage {
  PokemonDetail({Key key})
      : super(
            key: key,
            pageColor: colorWhite,
            title: "Metagross",
            showAppBar: true);

  List<UiAbility> abilities = [
    UiAbility("Clear Body", false),
    UiAbility("Light Metal", true)
  ];

  List<BarChartModel> stats = [
    BarChartModel("HP", 80, ColorUtil.fromDartColor(primaryColor)),
    BarChartModel("Attack", 135,
        ColorUtil.fromDartColor(pokemonTypeColor[PokemonType.FAIRY])),
  ];

  @override
  Widget init() {
    return ListView(
      padding: EdgeInsets.all(10.0),
      children: [
        buildImageView(),
        buildBasicInformationSection(),
        buildStatSection(),
        buildAbilitiesSection()
      ],
    );
  }

  Widget buildImageView() {
    return Column(
      children: [
        Container(
          width: 200,
          height: 200,
          alignment: Alignment.center,
          child: Image.network(
              "https://img.pokemondb.net/artwork/large/metagross.jpg"),
        ),
        buildPokemonType(PokemonType.STEEL, PokemonType.PSYCHIC)
      ],
    );
  }

  Widget buildBasicInformationSection() {
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      child: Column(
        children: [
          HeaderSection(headerText: "Basic information"),
          Container(
              margin: EdgeInsets.only(top: 5.0),
              decoration: BoxDecoration(
                  border: Border.all(color: primaryColor, width: 2.0),
                  borderRadius: BorderRadius.circular(10.0)),
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: buildLabelWithDetail("No.", "376")),
                      Expanded(
                          child: buildLabelWithDetail(
                              "Species", "Iron Leg Pokémon"))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: buildLabelWithDetail("Height", "16")),
                      Expanded(child: buildLabelWithDetail("Weight", "5,500"))
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }

  Widget buildStatSection() {
    List<Series<BarChartModel, String>> series = [
      Series(
          id: "Stats",
          data: stats,
          domainFn: (BarChartModel series, _) => series.name,
          measureFn: (BarChartModel series, _) => series.value,
          colorFn: (BarChartModel series, _) => series.color)
    ];
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      child: Column(
        children: [
          HeaderSection(headerText: "Base stats"),
        ],
      ),
    );
  }

  Widget buildAbilitiesSection() {
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      child: Column(
        children: [
          HeaderSection(headerText: "Ability"),
          Container(
            margin: EdgeInsets.only(top: 5.0),
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: primaryColor, width: 2.0),
                borderRadius: BorderRadius.circular(10.0)),
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(abilities.length, (index) {
                return Text("${index + 1}. ${abilities[index].name}",
                    style: text16);
              }),
            ),
          )
        ],
      ),
    );
  }

  Widget buildLabelWithDetail(String label, String detail) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(flex: 3, child: Text(label, style: header16Text)),
          Spacer(),
          Flexible(flex: 4, child: Text(detail, style: text16))
        ],
      ),
    );
  }

  Widget buildPokemonType(PokemonType type1, PokemonType type2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
        TypeCapsule(type: type1),
        if (type2 != null) TypeCapsule(type: type2)
      ],
    );
  }
}
