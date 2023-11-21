// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonsImpl _$$PokemonsImplFromJson(Map<String, dynamic> json) =>
    _$PokemonsImpl(
      values: (json['pokemons'] as List<dynamic>)
          .map((e) => Pokemon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonsImplToJson(_$PokemonsImpl instance) =>
    <String, dynamic>{
      'pokemons': instance.values,
    };
