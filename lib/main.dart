import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:interactive_bar/ui/screens/beer_selection/beer_selection_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: MyApp()));
}

final firebaseAppProvider =
    FutureProvider<FirebaseApp>((ref) => Firebase.initializeApp());

class MyApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseApp = useProvider(firebaseAppProvider);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme:
            GoogleFonts.titilliumWebTextTheme(Theme.of(context).textTheme),
      ),
      debugShowCheckedModeBanner: false,
      home: firebaseApp.when(
        data: (_) => BeerSelectionScreen(),
        loading: () => _FirebaseLoading(),
        error: (error, stackTrace) => _FirebaseError(),
      ),
    );
  }
}

class _FirebaseLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 100,
          width: 100,
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

class _FirebaseError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Error loading Firebase'),
      ),
    );
  }
}
