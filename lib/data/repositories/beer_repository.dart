import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:interactive_bar/data/models/beer.dart';
import 'package:firebase_storage/firebase_storage.dart';

abstract class BeerRepository {
  Future<List<Beer>> getBeers();
}

class FirestoreBeerRepository implements BeerRepository {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseStorage storage = FirebaseStorage.instance;
  @override
  Future<List<Beer>> getBeers() async {
    CollectionReference beers = firestore.collection('beers');
    final QuerySnapshot queryResults = await beers.get();
    return queryResults.docs.map((doc) => Beer.fromDoc(doc)).toList();
  }
}
