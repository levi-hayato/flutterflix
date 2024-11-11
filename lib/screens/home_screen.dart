import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../models/show.dart';
import '../widgets/movie_list.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Show>> futureShows;

  @override
  void initState() {
    super.initState();
    futureShows = ApiService().fetchShows();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      backgroundColor: Colors.black,
      body: FutureBuilder<List<Show>>(
        future: futureShows,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error loading shows'));
          } else {
            return MovieList(shows: snapshot.data!);
          }
        },
      ),
    );
  }
}
