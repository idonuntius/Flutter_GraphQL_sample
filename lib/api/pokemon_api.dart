import 'package:graphqlsample/api/api_client.dart';
import 'package:graphqlsample/api/graphql/query_pokemons.graphql.dart';

abstract class PokemonApi {
  Future<Query$Pokemons> fetchPokemons();
}

class PokemonApiImpl implements PokemonApi {
  final ApiClient apiClient = ApiClientImpl();

  @override
  Future<Query$Pokemons> fetchPokemons() async {
    final client = await apiClient.getClient();
    final result = await client.query$Pokemons(
      Options$Query$Pokemons(
        variables: Variables$Query$Pokemons(
          first: 20,
        ),
      ),
    );

    if (result.hasException || result.parsedData == null) {
      throw Exception('GraphQL error');
    }

    return result.parsedData!;
  }
}
