import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:interactive_bar/data/models/beer.dart';
import 'package:interactive_bar/data/repositories/beer_repository.dart';

final beerRepositoryProvider =
    Provider<BeerRepository>((ref) => FirestoreBeerRepository());

final beerListProvider = FutureProvider<List<Beer>>((ref) {
  final repository = ref.read(beerRepositoryProvider);
  return repository.getBeers();
});
