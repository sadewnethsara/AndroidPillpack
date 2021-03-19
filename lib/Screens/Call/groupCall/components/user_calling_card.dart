import 'package:flutter/material.dart';
import 'package:pillpacklk_android/Widgets/Widgets.dart';

import '../../../../Constants.dart';

class UserCallingCard extends StatelessWidget {
  const UserCallingCard({
    Key key,
    @required this.name,
    @required this.image,
  }) : super(key: key);

  final String name, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgoundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DialUserPic(
            size: 112,
            image: image,
          ),
          VerticalSpacing(of: 10),
          Text(
            name,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          VerticalSpacing(of: 5),
          Text(
            "Calling…",
            style: TextStyle(color: Colors.white60),
          )
        ],
      ),
    );
  }
}
