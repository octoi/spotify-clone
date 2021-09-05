import 'package:flutter/material.dart';
import 'package:spotify_clone/utils/constants.dart';

class Current extends StatelessWidget {
  const Current({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30.0),
      padding: EdgeInsets.symmetric(horizontal: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            rickImage,
            width: MediaQuery.of(context).size.width / 2.5,
            height: MediaQuery.of(context).size.width / 2.5,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 20.0),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_horiz),
                  color: appTextColor,
                ),
                SizedBox(height: 35.0),
                Text(
                  'Never gonna give you up ? Find it all one this playlist',
                  style: TextStyle(
                    color: appTextColor,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
