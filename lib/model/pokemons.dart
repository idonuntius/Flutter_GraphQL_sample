import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphqlsample/model/pokemon.dart';

part 'pokemons.freezed.dart';
part 'pokemons.g.dart';

@freezed
class Pokemons with _$Pokemons {
  const factory Pokemons({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'pokemons') required final List<Pokemon> values,
  }) = _Pokemons;

  factory Pokemons.fromJson(Map<String, Object?> json) => _$PokemonsFromJson(json);

  const Pokemons._();
}
