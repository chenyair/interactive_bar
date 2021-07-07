import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:interactive_bar/data/models/beer.dart';
import 'package:interactive_bar/logic/beer_providers.dart';
import 'package:interactive_bar/ui/screens/beer_selection/widgets/beer_expansion_tile.dart';

class BeerSelectionScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<Beer>> beerList = useProvider(beerListProvider);

    return Scaffold(
      body: beerList.maybeWhen(
        orElse: () => _BeerListLoading(),
        data: (beers) => _BeerListLoaded(beers: beers),
      ),
    );
  }
}

class _BeerListLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 100,
        width: 100,
        child: CircularProgressIndicator(),
      ),
    );
  }
}

final _selectedBeerIndexProvider = StateProvider<int>((ref) => 0);

class _BeerListLoaded extends HookWidget {
  final List<Beer> beers;
  const _BeerListLoaded({
    Key? key,
    required this.beers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final selectedBeerIndex = useProvider(_selectedBeerIndexProvider);

    return ListView.builder(
      itemCount: beers.length,
      itemBuilder: (context, index) {
        final beer = beers[index];
        return BeerExpansionTile(
          height: selectedBeerIndex.state == index
              ? size.height * 0.375
              : size.height * 0.20,
          isExpanded: selectedBeerIndex.state == index,
          beer: beer,
          onTap: () {
            selectedBeerIndex.state = index;
          },
        );
      },
    );
  }
}
