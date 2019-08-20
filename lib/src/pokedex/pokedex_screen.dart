import 'package:flutter/material.dart';
import 'pokemon_list_widget.dart';
import 'pokemon_service.dart';

class PokedexScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex:3,
                  child: PokemonListWidget(),
        ),
        Expanded(
          flex:7,
          child: RaisedButton(
            onPressed: (){
              PokemonService.getPokemons();
            },
            child:Text("Load"),
          ),
        )
      ],
    );
  }
}