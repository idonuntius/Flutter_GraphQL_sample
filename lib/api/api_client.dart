import 'package:graphql/client.dart';

abstract class ApiClient {
  Future<GraphQLClient> getClient();
}

class ApiClientImpl implements ApiClient {
  @override
  Future<GraphQLClient> getClient() async {
    final link = HttpLink('https://graphql-pokemon2.vercel.app/');
    return GraphQLClient(
      link: link,
      cache: GraphQLCache(),
    );
  }
}
