import 'package:flutter/material.dart';
import 'package:spotify_clone/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPrimaryColor,
      appBar: AppBar(
        backgroundColor: appPrimaryColor,
        elevation: 0.0,
        title: Text(
          'Good Afternoon',
          style: TextStyle(color: appTextColor),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined),
            color: appTextColor,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.history),
            color: appTextColor,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings_outlined),
            color: appTextColor,
          ),
        ],
      ),
    );
  }
}
