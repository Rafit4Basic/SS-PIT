import 'package:flutter/material.dart';

import 'package:peliculas/providers/movies_provider.dart';
import 'package:peliculas/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);
    // ignore: avoid_print
    print(moviesProvider.onDisplayMovies);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Películas perronas'),
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardSwiper(movies: moviesProvider.onDisplayMovies),
            const SizedBox(
              height: 10,
            ),
            MovieSlider(
                movies: moviesProvider.popularMovies, title: 'Populares xd'),
          ],
        ),
      ),
    );
  }
}
