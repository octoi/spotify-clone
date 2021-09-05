import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/home_screen.dart';
import 'package:spotify_clone/utils/colors.dart';

void main() {
  runApp(Spotify());
}

class Spotify extends StatelessWidget {
  const Spotify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
