import 'package:aib_test_flutter_master/core/routing/app_router.dart';
import 'package:aib_test_flutter_master/features/pokemon/domain/model/pokemon/pokemon.dart';
import 'package:flutter/material.dart';


import 'package:go_router/go_router.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    super.key,
    this.pokemon,
  });

  final Pokemon? pokemon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          context.pushNamed(AppRoute.pokemonDetails.name, extra: pokemon),
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nombre: ${pokemon?.name ?? "N/A"}'),
            ],
          ),
        ),
      ),
    );
  }
}
