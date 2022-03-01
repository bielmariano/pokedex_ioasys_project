import 'package:dio/dio.dart';
import '../models/pokemon_info_model.dart';
import '../consts/base_constants.dart' as consts;

class PokemonRepository {
  final dio = Dio();

  Future<List<PokemonInfoModel>> fetchAllPokemons() async {
    List<PokemonInfoModel> allPokemon = [];
    final responseCount = await dio.get(consts.urlBase);
    final count = responseCount.data['count'];
    for (int i = 1; i <= 151; i++) {
      final responsePoke = await dio.get('${consts.urlBase}/$i');
      final data = responsePoke.data;
      final int id = data['id'];
      final String name = data['name'];
      final int height = data['height'];
      final int weight = data['weight'];
      final String image = data['sprites']['other']['dream_world']['front_default'];
      final String moves  = data['abilities'][0]['ability']['name'];
      final String type = data['types'][0]['type']['name'];
      // TENTAR PUXAR UM MOVE E TYPE PARA CADA VARIAVEL E DEPOIS ADD.

      var pokemonAdd =
          PokemonInfoModel(id, name, image, height, weight, type, moves);
      allPokemon.add(pokemonAdd);
    }
    return allPokemon;
  }
}
