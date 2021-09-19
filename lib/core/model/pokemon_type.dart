enum PokemonType {
  NORMAL,
  FIRE,
  WATER,
  ELECTRIC,
  GRASS,
  ICE,
  FIGHTING,
  POISON,
  GROUND,
  FLYING,
  PSYCHIC,
  BUG,
  ROCK,
  GHOST,
  DARK,
  DRAGON,
  STEEL,
  FAIRY
}

extension PokemonTypeExtension on PokemonType {
  String get value {
    switch (this) {
      case PokemonType.NORMAL:
        return "NORMAL";
      case PokemonType.FIRE:
        return "FIRE";
      case PokemonType.WATER:
        return "WATER";
      case PokemonType.ELECTRIC:
        return "ELECTRIC";
      case PokemonType.GRASS:
        return "GRASS";
      case PokemonType.ICE:
        return "ICE";
      case PokemonType.FIGHTING:
        return "FIGHTING";
      case PokemonType.POISON:
        return "POISON";
      case PokemonType.GROUND:
        return "GROUND";
      case PokemonType.FLYING:
        return "FLYING";
      case PokemonType.PSYCHIC:
        return "PSYCHIC";
      case PokemonType.BUG:
        return "BUG";
      case PokemonType.ROCK:
        return "ROCK";
      case PokemonType.GHOST:
        return "GHOST";
      case PokemonType.DARK:
        return "DARK";
      case PokemonType.DRAGON:
        return "DRAGON";
      case PokemonType.STEEL:
        return "STEEL";
      case PokemonType.FAIRY:
        return "FAIRY";
    }
  }
}
