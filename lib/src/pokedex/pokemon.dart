class Pokemon{
  final int id;
  final String name;
  Pokemon({this.id, this.name});

  factory Pokemon.fromJson(Map<String,dynamic> json){
    return Pokemon(id:1,name:json["name"]);
  }
  static List<Pokemon> fromJSONList(List jsonList){
    List<Pokemon> pokemons =List<Pokemon>();
    jsonList.forEach((jsonItem){
      pokemons.add(Pokemon.fromJson(jsonItem));
    });

    return pokemons;
  }
}