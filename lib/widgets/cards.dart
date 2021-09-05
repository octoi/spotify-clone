import 'package:flutter/material.dart';
import 'package:spotify_clone/utils/constants.dart';

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            RecentCard(),
            RecentCard(),
          ],
        ),
        Row(
          children: [
            RecentCard(),
            RecentCard(),
          ],
        ),
        Row(
          children: [
            RecentCard(),
            RecentCard(),
          ],
        ),
      ],
    );
  }
}

class RecentCard extends StatelessWidget {
  final String title;

  const RecentCard({
    Key? key,
    this.title = 'Rick Roll',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: appSecondaryColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(5.0),
        width: double.infinity,
        child: Row(
          children: [
            Container(
              width: 65.0,
              height: 65.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
                image: DecorationImage(
                  image: NetworkImage(rickImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 10.0),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: appTextColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
