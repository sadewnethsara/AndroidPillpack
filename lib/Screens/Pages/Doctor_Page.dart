import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:pillpacklk_android/Constants.dart';
import 'package:pillpacklk_android/Screens/Pages/Pages.dart';

class DoctorPage extends StatefulWidget {
  DoctorPage({Key key}) : super(key: key);

  @override
  _DoctorPageState createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0020C2),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'DOCTORS',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.chat_rounded),
            onPressed: () {},
            color: Colors.white,
            iconSize: 20,
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        DoctorsTile(),
                        SizedBox(
                          height: 20,
                        ),
                        _notificationCard(),
                        _areaSpecialistsText(),
                        _specialistsCardInfo(),
                        _specialistsCardInfo(),
                        _specialistsCardInfo(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _areaSpecialistsText() {
  return Container(
    margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Specialist In Your Area',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        Text(
          'See All',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: midColor,
          ),
        ),
      ],
    ),
  );
}

Widget _specialistsCardInfo() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 18.0),
    margin: EdgeInsets.only(
      bottom: 20.0,
    ),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1.0,
            blurRadius: 6.0,
          ),
        ]),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Color(0xFFD9D9D9),
              backgroundImage: NetworkImage(USER_IMAGE),
              radius: 36.0,
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    text: 'Wellness\n',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      height: 1.3,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Dr Ayor Kruger',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: '\nPoplar Pharma Limited',
                        style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      TextSpan(
                        text: '\nDermatologist \nSAn Franscisco CA | 5 min',
                        style: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: const EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: const BoxDecoration(
                      gradient: purpleGradient,
                      borderRadius: BorderRadius.all(Radius.circular(80.0)),
                    ),
                    child: Container(
                      constraints: const BoxConstraints(
                          minWidth: 88.0,
                          minHeight: 36.0), // min sizes for Material buttons
                      alignment: Alignment.center,
                      child: const Text(
                        'Book Visit',
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Icon(
          LineAwesomeIcons.user_md,
          color: lightColor,
          size: 36,
        ),
      ],
    ),
  );
}

Container _notificationCard() {
  return Container(
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Color(0xFFBF4954),
      // gradient: redGradient,
      borderRadius: BorderRadius.circular(10),
    ),
    child: ListTile(
      leading: Icon(
        LineAwesomeIcons.calendar_check_o,
        color: Colors.white,
        size: 32,
      ),
      title: Text(
        'Your Visit with \nDr Kyecera',
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: OutlineButton(
        onPressed: () {},
        color: Colors.transparent,
        borderSide: BorderSide(
          color: Colors.white,
          width: 1.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26),
        ),
        child: Text(
          'Review & Add Notes',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
