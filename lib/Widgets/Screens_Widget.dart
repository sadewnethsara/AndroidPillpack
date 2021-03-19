import 'package:flutter/material.dart';

class ScreenWidget extends StatelessWidget {
  final String title;
  final double titleFontSize;
  final Widget iconButton;
  final double containerHeight;
  final Widget container;
  final Widget widget;
  final double bodyHeight;

  const ScreenWidget({
    Key key,
    @required this.title,
    @required this.titleFontSize,
    this.iconButton,
    @required this.containerHeight,
    this.container,
    @required this.widget,
    @required this.bodyHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0020C2),
        elevation: 0,
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: titleFontSize,
          ),
        ),
        leading: iconButton,
      ),
      body: Container(
        color: Color(0xFF0020C2),
        child: ListView(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  height: containerHeight,
                  child: container,
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: bodyHeight,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: widget,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
