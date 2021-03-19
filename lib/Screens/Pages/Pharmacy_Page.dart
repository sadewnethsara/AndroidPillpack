import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

import '../../Constants.dart';

class PharmacyPage extends StatefulWidget {
  PharmacyPage({Key key}) : super(key: key);

  @override
  _PharmacyPageState createState() => _PharmacyPageState();
}

class _PharmacyPageState extends State<PharmacyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0020C2),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'PHARMACIES',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        actions: [
          IconButton(
            icon: Icon(LineAwesomeIcons.shopping_cart),
            onPressed: () {},
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
                child: SingleChildScrollView(
                  child: Container(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
