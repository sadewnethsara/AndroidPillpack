import 'package:flutter/material.dart';
import 'package:pillpacklk_android/Widgets/Widgets.dart';
import '../../Constants.dart';

class NotificationsPage extends StatefulWidget {
  NotificationsPage({Key key}) : super(key: key);

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0020C2),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'NOTIFICATIONS',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {
              showModalBottomSheet<int>(
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    return DoctorFeedback();
                  });
            },
            color: Colors.white,
            iconSize: 25,
          ),
        ],
        leading: Icon(
          Icons.search,
          color: Palette.blueColor,
        ),
      ),
      body: Container(
        color: Color(0xFF0020C2),
        child: ListView(
          children: <Widget>[
            Expanded(
                child: Padding(
              padding: EdgeInsets.all(8),
              child: Container(height: 30),
            )),
            Expanded(
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Center(
                  child: SizedBox(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
