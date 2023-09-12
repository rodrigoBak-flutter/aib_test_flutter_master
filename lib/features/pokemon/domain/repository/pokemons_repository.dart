import 'package:aib_test_flutter_master/features/pokemon/data/dto/get_pokemon/get_pokemon.dart';
import 'package:aib_test_flutter_master/features/pokemon/data/dto/get_pokemons_list/get_pokemons_list.dart';
import 'package:aib_test_flutter_master/features/pokemon/domain/model/pokemon/pokemon.dart';
import 'package:dartz/dartz.dart';

abstract class PokemonsRepository {
  Future<Either<void, List<Pokemon>>> getPokemonsList(
    GetPokemonsListRequestDTO request,
  );
  Future<Either<void, Pokemon?>> getPokemon(
    GetPokemonRequestDTO request,
  );
}
