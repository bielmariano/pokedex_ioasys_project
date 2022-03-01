import 'package:flutter_test/flutter_test.dart';
import 'package:ioasys_pokedex/repositories/pokemon_info_repository.dart';

void main() async {
    final service = PokemonRepository();
  final allPoke = await service.fetchAllPokemons();
  print(allPoke[0].image);
}