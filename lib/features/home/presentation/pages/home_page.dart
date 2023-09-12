import 'package:aib_test_flutter_master/features/home/presentation/cubit/home_cubit.dart';
import 'package:aib_test_flutter_master/features/pokemon/presentation/pokemon_list/widgets/pokemon_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => HomeCubit()..init(),
      child: const HomeContent(),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.watch<HomeCubit>().state.appName),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const PokemonList(),
    );
  }
}
