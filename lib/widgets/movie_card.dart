import 'package:flutter/material.dart';
import '../models/show.dart';

class MovieCard extends StatelessWidget {
  final Show show;

  MovieCard({required this.show});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          AspectRatio(
            aspectRatio: 2 / 3,
            child: Image.network(
              show.imageUrl,
              
              fit: BoxFit.cover,
            ),
          ),
          // SizedBox(height: 8),
         
        ],
      ),
    );
  }
}
