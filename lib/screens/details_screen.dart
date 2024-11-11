import 'package:flutter/material.dart';
import '../models/show.dart';

class DetailScreen extends StatelessWidget {
  final Show show;

  DetailScreen({required this.show});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(show.name),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (show.imageUrl.isNotEmpty)
              Image.network(
                show.imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 400,
              ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                show.name,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                show.summary.replaceAll(RegExp(r'<[^>]*>'), ''), // Remove HTML tags
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
