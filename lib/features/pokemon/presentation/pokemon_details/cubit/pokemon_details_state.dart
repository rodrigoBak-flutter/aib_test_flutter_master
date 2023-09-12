
import 'package:aib_test_flutter_master/core/utils/enums/status.dart';
import 'package:aib_test_flutter_master/features/pokemon/domain/model/pokemon/pokemon.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_details_state.freezed.dart';

@freezed
class PokemonDetailsState with _$PokemonDetailsState {
  const factory PokemonDetailsState({
    Pokemon? pokemon,
    @Default(Status.initial) Status status,
  }) = _PokemonDetailsState;
}
