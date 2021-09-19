import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poke_dex/core/model/pokemon_type.dart';

const colorRed800 = Color(0xFFC62828);

const colorWhite = Color(0xFFFFFFFF);
const colorBlack = Color(0xFF000000);

const colorGrey300 = Color(0xFFE0E0E0);
const colorGrey500 = Color(0xFF9E9E9E);
const colorGrey600 = Color(0xFF757575);

const primaryColor = colorRed800;

const Map<PokemonType, Color> pokemonTypeColor = {
  PokemonType.NORMAL: Color(0xFFAAAA99),
  PokemonType.FIRE: Color(0xFFFF4422),
  PokemonType.WATER: Color(0xFF3399FF),
  PokemonType.ELECTRIC: Color(0xFFFFCC33),
  PokemonType.GRASS: Color(0xFF77CC55),
  PokemonType.ICE: Color(0xFF66CCFF),
  PokemonType.FIGHTING: Color(0xFFBB5544),
  PokemonType.POISON: Color(0xFFAA5599),
  PokemonType.GROUND: Color(0xFFDDBB55),
  PokemonType.FLYING: Color(0xFF8899FF),
  PokemonType.PSYCHIC: Color(0xFFFF5599),
  PokemonType.BUG: Color(0xFFAABB22),
  PokemonType.ROCK: Color(0xFFBBAA66),
  PokemonType.GHOST: Color(0xFF6666BB),
  PokemonType.DRAGON: Color(0xFF7766EE),
  PokemonType.DARK: Color(0xFF775544),
  PokemonType.STEEL: Color(0xFFAAAABB),
  PokemonType.FAIRY: Color(0xFFEE99EE),
};
