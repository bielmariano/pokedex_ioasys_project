import '../models/pokemon_info_model.dart';
import '../repositories/pokemon_info_repository.dart';

class PokemonController {
  final _repository = PokemonRepository();

  Future<List<PokemonInfoModel>> getAallPokemon() async {
    return await _repository.fetchAllPokemons().onError((error, stackTrace) => throw Error());
  }
}