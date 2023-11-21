import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

@freezed
class Pokemon with _$Pokemon {
  const factory Pokemon({
    required final String name,
    required final String image,
    required final List<String> types,
  }) = _Pokemon;

  factory Pokemon.fromJson(Map<String, Object?> json) => _$PokemonFromJson(json);

  const Pokemon._();
}
