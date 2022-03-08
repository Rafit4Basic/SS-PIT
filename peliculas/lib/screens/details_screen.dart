import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ??
            'Ya no está :(';

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const _CustomAppbar(),
          SliverList(
              delegate: SliverChildListDelegate([
            const _PosterAndTitle(),
            const _Overview(),
            const _Overview(),
            const _Overview(),
            const CastingCards(),
          ]))
        ],
      ),
    );
  }
}

class _CustomAppbar extends StatelessWidget {
  const _CustomAppbar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.amber,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.only(bottom: 10),
          color: Colors.amber,
          child: const Text(
            'movie.title',
            style: TextStyle(fontSize: 16),
          ),
        ),
        background: const FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('http://via.placeholder.com/300x400'),
          //fit: BoxFit.cover,
          height: 150,
        ),
      ),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
  const _PosterAndTitle({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              //Se modificó el tamaño de la imagen para que se viera más bonito (origninal 300x400)
              image: NetworkImage('http://via.placeholder.com/200x300'),
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'movie.title',
                style: Theme.of(context).textTheme.headline5,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Text(
                'movie.originalTitle',
                style: Theme.of(context).textTheme.subtitle1,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star_border_outlined,
                    size: 15,
                    color: Colors.grey,
                  ),
                  Text(
                    'movie.voteAverge',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  const _Overview({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        'Estaba la pájara pinta a la sombra del verde limón. Con el pico picaba la rama con las alas recoge la flor. Estaba la pájara pinta a la sombra del verde limón. Con el pico picaba la rama con las alas recoge la flor. ',
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
