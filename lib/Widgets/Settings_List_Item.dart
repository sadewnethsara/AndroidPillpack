import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../Constants.dart';

class SettingsListItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool hasNavigation;
  final bool hasBorder;
  final onTap;

  const SettingsListItem({
    Key key,
    this.icon,
    this.text,
    this.hasNavigation = true,
    this.hasBorder = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: Palette.whiteColor,
        height: MediaQuery.of(context).size.height * 0.085,
        margin: EdgeInsets.symmetric(
          horizontal: 0,
        ).copyWith(
          bottom: 1,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            TextButton(
              onPressed: onTap,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      this.icon,
                      size: kSpacingUnit * 2.5,
                      color: Colors.black,
                    ),
                    SizedBox(width: kSpacingUnit * 1.5),
                    Text(
                      this.text,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    if (this.hasNavigation)
                      Icon(
                        LineAwesomeIcons.angle_right,
                        size: kSpacingUnit * 2.5,
                        color: Colors.black,
                      ),
                  ],
                ),
              ),
            ),
            if (this.hasNavigation)
              Divider(
                thickness: 1,
                color: Palette.greyColor,
              ),
          ],
        ),
      ),
    );
  }
}
