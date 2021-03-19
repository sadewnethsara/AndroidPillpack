import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:pillpacklk_android/Constants.dart';
import 'package:pillpacklk_android/Widgets/Widgets.dart';
import 'package:transition/transition.dart';

import 'Settings/Settings_Screens.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    var header = Center(
      child: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Stack(
                children: <Widget>[
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: _imageFile == null
                        ? AssetImage('assets/Images/avatar.png')
                        : FileImage(File(_imageFile.path)),
                  ),
                  Positioned(
                      bottom: -7,
                      right: -8,
                      child: TextButton(
                        onPressed: () {
                          showModalBottomSheet<int>(
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) {
                              return Popover(
                                child: Column(
                                  children: [
                                    _buildListItem(
                                      context,
                                      title: Text('Camera'),
                                      leading: Icon(LineAwesomeIcons.camera,
                                          color: Colors.grey),
                                      onTap: () {
                                        takePhoto(ImageSource.camera);
                                      },
                                    ),
                                    _buildListItem(
                                      context,
                                      title: Text('Gallery'),
                                      leading: Icon(LineAwesomeIcons.image,
                                          color: Colors.grey),
                                      onTap: () {
                                        takePhoto(ImageSource.gallery);
                                      },
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: Palette.blueColor,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            heightFactor: 15,
                            widthFactor: 15,
                            child: Icon(
                              LineAwesomeIcons.camera,
                              color: Palette.whiteColor,
                              size: 18,
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Sadew Nethsara',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 20),
          ),
          SizedBox(height: 5),
          Text(
            'sadewnethsara@gmail.com',
          ),
          SizedBox(height: 5),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Palette.blueColor,
        ),
        backgroundColor: Palette.blueColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'SETTINGS & MORE',
          style: TextStyle(color: Colors.white, fontSize: 16),
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
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      header,
                      SizedBox(
                        height: 20,
                      ),
                      SettingsListItem(
                        icon: LineAwesomeIcons.history,
                        text: 'Order History',
                        onTap: () {
                          Navigator.push(
                              context,
                              Transition(
                                  child: OrderHistory(),
                                  transitionEffect:
                                      TransitionEffect.LEFT_TO_RIGHT));
                        },
                      ),
                      SettingsListItem(
                        icon: LineAwesomeIcons.calendar_check,
                        text: 'Appoinment History',
                        onTap: () {
                          Navigator.push(
                              context,
                              Transition(
                                  child: AppoinmentHistory(),
                                  transitionEffect:
                                      TransitionEffect.LEFT_TO_RIGHT));
                        },
                      ),
                      SettingsListItem(
                        icon: LineAwesomeIcons.hand_holding_us_dollar,
                        text: 'Payment History',
                        onTap: () {
                          Navigator.push(
                              context,
                              Transition(
                                  child: PaymentHistory(),
                                  transitionEffect:
                                      TransitionEffect.LEFT_TO_RIGHT));
                        },
                      ),
                      SettingsListItem(
                        icon: LineAwesomeIcons.user_friends,
                        text: 'Family Doctors',
                        onTap: () {
                          Navigator.push(
                              context,
                              Transition(
                                  child: FamilyDoctors(),
                                  transitionEffect:
                                      TransitionEffect.LEFT_TO_RIGHT));
                        },
                      ),
                      SettingsListItem(
                        icon: LineAwesomeIcons.capsules,
                        text: 'Medicines',
                        onTap: () {
                          Navigator.push(
                              context,
                              Transition(
                                  child: Medicines(),
                                  transitionEffect:
                                      TransitionEffect.LEFT_TO_RIGHT));
                        },
                      ),
                      SettingsListItem(
                        icon: LineAwesomeIcons.address_card,
                        text: 'My Address',
                        onTap: () {
                          Navigator.push(
                              context,
                              Transition(
                                  child: MyAddress(),
                                  transitionEffect:
                                      TransitionEffect.LEFT_TO_RIGHT));
                        },
                      ),
                      SettingsListItem(
                        icon: LineAwesomeIcons.question_circle,
                        text: 'Help & Support',
                        onTap: () {
                          Navigator.push(
                              context,
                              Transition(
                                  child: HelpSupport(),
                                  transitionEffect:
                                      TransitionEffect.LEFT_TO_RIGHT));
                        },
                      ),
                      SettingsListItem(
                        icon: LineAwesomeIcons.cog,
                        text: 'Settings',
                        onTap: () {
                          Navigator.push(
                              context,
                              Transition(
                                  child: Settings(),
                                  transitionEffect:
                                      TransitionEffect.LEFT_TO_RIGHT));
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SettingsListItem(
                        icon: LineAwesomeIcons.alternate_sign_out,
                        text: 'Logout',
                        hasNavigation: false,
                        hasBorder: true,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(
    BuildContext context, {
    Widget title,
    Widget leading,
    Widget trailing,
    void Function() onTap,
  }) {
    final theme = Theme.of(context);

    return TextButton(
      onPressed: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 16.0,
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: theme.dividerColor,
              width: 0.5,
            ),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (leading != null) leading,
            if (title != null)
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: DefaultTextStyle(
                  child: title,
                  style: theme.textTheme.headline6,
                ),
              ),
            Spacer(),
            if (trailing != null) trailing,
          ],
        ),
      ),
    );
  }
}

class Popover extends StatelessWidget {
  const Popover({
    Key key,
    this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.all(16.0),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: const BorderRadius.all(Radius.circular(16.0)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [_buildHandle(context), if (child != null) child],
      ),
    );
  }

  Widget _buildHandle(BuildContext context) {
    final theme = Theme.of(context);

    return FractionallySizedBox(
      widthFactor: 0.25,
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 12.0,
        ),
        child: Container(
          height: 5.0,
          decoration: BoxDecoration(
            color: theme.dividerColor,
            borderRadius: const BorderRadius.all(Radius.circular(2.5)),
          ),
        ),
      ),
    );
  }
}
