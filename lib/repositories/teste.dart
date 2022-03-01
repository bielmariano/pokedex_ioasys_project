// import 'package:dio/dio.dart';
// import 'package:ioasys_pokedex/repositories/pokemon_count_repository.dart';
// import '../consts/base_constants.dart' as consts;

// class PokemonInfoRepository {
//   final dio = Dio();
//   final count = PokeCountRepository().getPokeCount();

//   Future <List<PokemonInfoRepositoryModel>> getAllPokeInfo() async {
//     for (final i = 1; i <= count; i++) {

//     final response = await dio.get('${consts.urlBase}/$count');
//     final data = response.data as List;
//     final allPokemon
//     }
//   }
// }