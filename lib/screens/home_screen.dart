import 'package:flutter/material.dart';
import 'package:spotify_clone/utils/constants.dart';
import 'package:spotify_clone/widgets/cards.dart';

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
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        color: appPrimaryColor,
        child: IconTheme(
          data: IconThemeData(color: appTextColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.search_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.playlist_add_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.account_circle_outlined),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Cards(),
          ],
        ),
      ),
    );
  }
}
