import 'package:flutter/material.dart';
import '../models/show.dart';
import 'movie_card.dart';

class MovieList extends StatelessWidget {
  final List<Show> shows;

  MovieList({required this.shows});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Popular Shows',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        SizedBox(height: 8),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: shows.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  
                  MovieCard(show: shows[index]),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
