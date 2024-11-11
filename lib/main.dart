import 'package:flutter/material.dart';
import 'package:movie_app/screens/splash_screen.dart';

import 'screens/Dashboard.dart';
import 'screens/home_screen.dart';
import 'screens/search_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterFlix',
     theme: ThemeData(colorScheme: ColorScheme.dark()),
      home: SplashScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  // List of screens
  final List<Widget> _screens = [
    HomeScreen(),
    SearchScreen(),
    PricingScreen(),
    WatchlistScreen(),
    ProfileScreen(),
  ];

  // Update current index on tab change
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FlutterFlix" , style: TextStyle(color: Colors.white),),
      actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.white,))],
      ),
      body: _screens[_currentIndex], // Show the selected screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home , size: 30 , color: Colors.white,),
            label: '',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search , size: 30 , color: Colors.white,),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on , size: 30 , color: Colors.white,),
            label: 'Pricing',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark , size: 30 , color: Colors.white,),
            label: 'Watchlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person , size: 30 , color: Colors.white,),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
