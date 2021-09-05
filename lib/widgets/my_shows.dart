import 'package:flutter/material.dart';
import 'package:spotify_clone/utils/constants.dart';

class MyShows extends StatelessWidget {
  const MyShows({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Songs',
            style: TextStyle(
              fontSize: 22,
              color: appTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ShowCard(),
                ShowCard(),
                ShowCard(),
                ShowCard(),
                ShowCard(),
                ShowCard(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ShowCard extends StatelessWidget {
  const ShowCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(5.0),
          width: 150.0,
          height: 150.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: NetworkImage(rickImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 10.0),
        Column(
          children: [
            Text(
              'Rick roll',
              style: TextStyle(
                color: appTextColor,
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 5.0),
            Container(
              margin: EdgeInsets.only(left: 6.0),
              child: Text(
                'Song • Rick',
                style: TextStyle(
                  color: appTextColor.withOpacity(0.8),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
