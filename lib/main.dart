import 'package:flutter/material.dart';

void main() {
  runApp(CatalogApp());
}

class CatalogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catálogo de Películas',
      home: CatalogScreen(),
    );
  }
}

class CatalogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catálogo de Películas'),
      ),
      body: MovieList(),
    );
  }
}

class MovieList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MovieItem(title: 'Pelicula 1', director: 'Director 1'),
        MovieItem(title: 'Pelicula 2', director: 'Director 2'),
        MovieItem(title: 'Pelicula 3', director: 'Director 3'),
      ],
    );
  }
}

class MovieItem extends StatelessWidget {
  final String title;
  final String director;

  MovieItem({required this.title, required this.director});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Director: $director',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Icon(
              Icons.star,
              color: Colors.yellow,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
