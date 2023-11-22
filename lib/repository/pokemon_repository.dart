import 'package:graphqlsample/api/pokemon_api.dart';
import 'package:graphqlsample/model/pokemon.dart';
import 'package:graphqlsample/model/pokemons.dart';

abstract class PokemonRepository {
  Future<Pokemons> fetchPokemons();
}

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonApi pokemonApi = PokemonApiImpl();

  @override
  Future<Pokemons> fetchPokemons() async {
    final result = await pokemonApi.fetchPokemons();
    final list = result.pokemons
        .map(
          (e) => Pokemon(
            name: e.name,
            image: e.image,
            types: e.types.map((e) => e).toList(),
          ),
        )
        .toList();
    return Pokemons(values: list);
  }
}
