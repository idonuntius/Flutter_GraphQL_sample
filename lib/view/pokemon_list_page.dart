import 'package:flutter/material.dart';
import 'package:graphqlsample/repository/pokemon_repository.dart';

class PokemonListPage extends StatelessWidget {
  PokemonListPage({super.key});

  final PokemonRepository pokemonRepository = PokemonRepositoryImpl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GraphQL sample'),
      ),
      body: FutureBuilder(
        future: pokemonRepository.fetchPokemons(),
        builder: (context, snapshot) {
          final pokemons = snapshot.data;

          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          } else if (pokemons == null) {
            return const Text('no data');
          } else {
            return ListView.separated(
              itemCount: pokemons.values.length,
              separatorBuilder: (context, index) {
                return const Divider(height: 0.5);
              },
              itemBuilder: (context, index) {
                final pokemon = pokemons.values[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(pokemon.image),
                  ),
                  title: Text(pokemon.name),
                  subtitle: Text(pokemon.types.join(',')),
                );
              },
            );
          }
        },
      ),
    );
  }
}
