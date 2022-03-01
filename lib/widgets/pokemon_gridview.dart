import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../controllers/pokemons_color_controller.dart';
import '../Pages/pokemon_page.dart';
import '../models/pokemon_info_model.dart';

class PokemonGridview extends StatefulWidget {
  final List<PokemonInfoModel> pokemons;
  const PokemonGridview({
    Key? key,
    required this.pokemons,
  }) : super(key: key);

  @override
  State<PokemonGridview> createState() => _PokemonGridviewState();
}

class _PokemonGridviewState extends State<PokemonGridview> {
  PokemonColorTypeController pokemonColorType = PokemonColorTypeController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
            itemCount: widget.pokemons.length,
            itemBuilder: (context, index) {
              final pokemon = widget.pokemons[index];

              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PokemonPage(pokemon: pokemon,);
                  }));
                },
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(
                          color: pokemonColorType.pokemonColor(pokemon.type),
                          width: 2)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          child: Text(
                            '#${pokemon.id}',
                            style: TextStyle(
                                color: pokemonColorType
                                    .pokemonColor(pokemon.type)),
                          ),
                          alignment: Alignment.topRight,
                        ),
                      ),
                      Container(
                          width: 50,
                          height: 50,
                          child: SvgPicture.network(
                            '${pokemon.image}',
                            fit: BoxFit.contain,
                          )),
                      Container(
                        width: double.infinity,
                        height: 18,
                        child: Center(
                          child: Text(
                            pokemon.name,
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                        color: pokemonColorType.pokemonColor(pokemon.type),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
