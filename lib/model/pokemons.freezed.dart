// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemons.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pokemons _$PokemonsFromJson(Map<String, dynamic> json) {
  return _Pokemons.fromJson(json);
}

/// @nodoc
mixin _$Pokemons {
// ignore: invalid_annotation_target
  @JsonKey(name: 'pokemons')
  List<Pokemon> get values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonsCopyWith<Pokemons> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonsCopyWith<$Res> {
  factory $PokemonsCopyWith(Pokemons value, $Res Function(Pokemons) then) =
      _$PokemonsCopyWithImpl<$Res, Pokemons>;
  @useResult
  $Res call({@JsonKey(name: 'pokemons') List<Pokemon> values});
}

/// @nodoc
class _$PokemonsCopyWithImpl<$Res, $Val extends Pokemons>
    implements $PokemonsCopyWith<$Res> {
  _$PokemonsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonsImplCopyWith<$Res>
    implements $PokemonsCopyWith<$Res> {
  factory _$$PokemonsImplCopyWith(
          _$PokemonsImpl value, $Res Function(_$PokemonsImpl) then) =
      __$$PokemonsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'pokemons') List<Pokemon> values});
}

/// @nodoc
class __$$PokemonsImplCopyWithImpl<$Res>
    extends _$PokemonsCopyWithImpl<$Res, _$PokemonsImpl>
    implements _$$PokemonsImplCopyWith<$Res> {
  __$$PokemonsImplCopyWithImpl(
      _$PokemonsImpl _value, $Res Function(_$PokemonsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_$PokemonsImpl(
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonsImpl extends _Pokemons {
  const _$PokemonsImpl(
      {@JsonKey(name: 'pokemons') required final List<Pokemon> values})
      : _values = values,
        super._();

  factory _$PokemonsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonsImplFromJson(json);

// ignore: invalid_annotation_target
  final List<Pokemon> _values;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'pokemons')
  List<Pokemon> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'Pokemons(values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonsImpl &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonsImplCopyWith<_$PokemonsImpl> get copyWith =>
      __$$PokemonsImplCopyWithImpl<_$PokemonsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonsImplToJson(
      this,
    );
  }
}

abstract class _Pokemons extends Pokemons {
  const factory _Pokemons(
          {@JsonKey(name: 'pokemons') required final List<Pokemon> values}) =
      _$PokemonsImpl;
  const _Pokemons._() : super._();

  factory _Pokemons.fromJson(Map<String, dynamic> json) =
      _$PokemonsImpl.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'pokemons')
  List<Pokemon> get values;
  @override
  @JsonKey(ignore: true)
  _$$PokemonsImplCopyWith<_$PokemonsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
