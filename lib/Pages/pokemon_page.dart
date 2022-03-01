import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../controllers/pokemons_color_controller.dart';
import '../models/pokemon_info_model.dart';
import '../widgets/pokemon_gridview.dart';

class PokemonPage extends StatelessWidget {
  PokemonColorTypeController pokemonColorType = PokemonColorTypeController();

  final PokemonInfoModel pokemon;
  PokemonPage({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pokemonColorType.pokemonColor(pokemon.type),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
              left: 150,
              child: Image.asset('assets/images/pokeball_background.png')),
          Positioned(left: 0, top: 16, child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:30),
                child: IconButton(onPressed:() { Navigator.of(context).pop();} , icon: const Icon(Icons.arrow_back), color: Colors.white,),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(19, 0, 0, 0),
                child: Text(pokemon.name, style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 120),
                child: Text('#${pokemon.id}', style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
              ),
            ],
          )),
          Positioned(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 100, 8, 0),
                  child: ClipRRect( borderRadius: BorderRadius.circular(15),
                    child: Container(
                      child: Column(),
                      color: Colors.white,
                      height: 400,
                      width: double.infinity,
                    ),
                  ),
                ),
              )),
          Positioned( child: Center(child: Padding(
            padding: const EdgeInsets.only(bottom: 400),
            child: Container(height: 200, width: 200 ,child: SvgPicture.network(pokemon.image)),
          )))
        ],
      ),
    );
  }
}
