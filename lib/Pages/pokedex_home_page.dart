import 'package:flutter/material.dart';
import '../controllers/pokemons_repository_controller.dart';
import '../models/pokemon_info_model.dart';
import '../widgets/pokemon_gridview.dart';
import '../widgets/pokemon_search_field.dart';

class PokedexHomePage extends StatefulWidget {
  const PokedexHomePage({Key? key}) : super(key: key);

  @override
  State<PokedexHomePage> createState() => _PokedexHomePageState();
}

class _PokedexHomePageState extends State<PokedexHomePage> {
  final _controller = PokemonController();
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                  height: 24,
                  width: double.infinity,
                  child: DecoratedBox(
                      decoration: BoxDecoration(color: Color(0XFFEC0344)))),
              Padding(
                padding: const EdgeInsets.fromLTRB(48, 50, 0, 0),
                child: Row(
                  children: [
                    Image.asset('assets/images/ioasys_icon.png'),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(13, 0, 0, 0),
                      child: Text(
                        'ioasys pokédex',
                        style: TextStyle(
                            fontSize: 24,
                            color: Color(0XFFEC0344),
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(40, 50, 85, 10),
                child: PokemonSearchField(
                labelText: 'Buscar',
                hintText: 'Buscar Pokemon'),
              ),
              FutureBuilder<List<PokemonInfoModel>>(
                future: _controller.getAallPokemon(),
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting: return Center(child: CircularProgressIndicator(),);
                    case ConnectionState.none: return Text(':(');
                    default:
                    if(snapshot.hasData) {
                      return PokemonGridview(pokemons: snapshot.data??[]);
                    } else{
                      if(snapshot.error is Exception) {
                        return Text('erro exception');
                      } else {
                        return Text('Outra coisa');
                      }
                    }
                  }
                },)
            ],
          ),
        ));
  }
}
