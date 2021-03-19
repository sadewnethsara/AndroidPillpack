import 'package:flutter/material.dart';
import 'package:pillpacklk_android/Widgets/Widgets.dart';

class AppoinmentHistory extends StatelessWidget {
  const AppoinmentHistory({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      bodyHeight: MediaQuery.of(context).size.height,
      title: "APPOINMENT HISTORY",
      titleFontSize: 16,
      containerHeight: 0,
      iconButton: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        color: Colors.white,
        icon: Icon(Icons.arrow_back),
      ),
      container: Container(),
      widget: SingleChildScrollView(
        child: Container(),
      ),
    );
  }
}
