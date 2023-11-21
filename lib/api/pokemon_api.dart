import 'package:graphql/client.dart';
import 'package:graphqlsample/api/api_client.dart';

abstract class PokemonApi {
  Future<QueryResult> fetchPokemons();
}

class PokemonApiImpl implements PokemonApi {
  final ApiClient apiClient = ApiClientImpl();

  @override
  Future<QueryResult> fetchPokemons() async {
    const query = r'''
      query pokemons($first: Int!) {
        pokemons(first: $first) {
          name
          image
          types
        }
      }
    ''';
    final options = QueryOptions(
      document: gql(query),
      variables: const {
        'first': 10,
      },
    );
    final client = await apiClient.getClient();
    return client.query(options);
  }
}
