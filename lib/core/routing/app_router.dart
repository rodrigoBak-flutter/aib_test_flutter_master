
import 'package:aib_test_flutter_master/features/home/presentation/pages/home_page.dart';
import 'package:aib_test_flutter_master/features/pokemon/domain/model/pokemon/pokemon.dart';
import 'package:aib_test_flutter_master/features/pokemon/presentation/pokemon_details/pages/pokemon_details_page.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  home,
  pokemonDetails,
}

final GoRouter goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
          path: AppRoute.pokemonDetails.name,
          name: AppRoute.pokemonDetails.name,
          builder: (context, state) => PokemonDetails(
            pokemon: state.extra as Pokemon,
          ),
        )
      ],
    ),
  ],
);
