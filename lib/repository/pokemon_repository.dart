import 'package:graphqlsample/api/pokemon_api.dart';
import 'package:graphqlsample/model/pokemons.dart';

abstract class PokemonRepository {
  Future<Pokemons> fetchPokemons();
}

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonApi pokemonApi = PokemonApiImpl();

  @override
  Future<Pokemons> fetchPokemons() async {
    final result = await pokemonApi.fetchPokemons();

    if (result.hasException) {
      throw Exception('GraphQL error');
    }

    final data = result.data;

    if (data != null) {
      return Pokemons.fromJson(data);
    } else {
      return const Pokemons(values: []);
    }
  }
}
