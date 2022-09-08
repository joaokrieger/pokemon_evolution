import 'package:flutter/material.dart';
import 'package:flutter_project/components/pokemon.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacity = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        leading: const Icon(Icons.arrow_back),
        title: const Text('Pokemon - Evolution'),
      ),
      body: AnimatedOpacity(
        opacity: opacity ? 1 : 0,
        duration: const Duration(milliseconds: 500),
        child: ListView(
          children: const [
            PokemonCard('Caterpie',
                'assets/images/caterpie.png','assets/images/butterfree.png', 2),
            PokemonCard('Charizard',
                'assets/images/charmander.png','assets/images/charizard.png', 5),
            PokemonCard('Machop',
                'assets/images/machop.png','assets/images/machamp.png', 4),
            PokemonCard('Bulbasaur',
                'assets/images/bulbasaur.png','assets/images/venusaur.png', 3),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: () {
          setState(() {
            opacity = !opacity;
          });
        },
        backgroundColor: Colors.red[900],
        child: const Icon(
          Icons.remove_red_eye,
        ),
      ),
    );
  }
}