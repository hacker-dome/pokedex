import 'package:flutter/material.dart';
import 'package:pokedex/src/pokedex/pokemon.dart';

import 'pokemon_service.dart';

class PokemonListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pokemon>>(
      future: PokemonService.getPokemons(),
      builder: (BuildContext context, AsyncSnapshot<List<Pokemon>> snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(snapshot.data[index].name),
              );
            },
          );
        } else if (snapshot.hasError) {
          return Center(child: Text("No se pudo descargar la data de pokemons"));
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
