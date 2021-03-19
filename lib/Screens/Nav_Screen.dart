import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:pillpacklk_android/Screens/Authentication/Signin.dart';
import 'package:pillpacklk_android/Screens/Authentication/Signup.dart';
import 'package:pillpacklk_android/Widgets/Widgets.dart';

import '../Constants.dart';
import 'Pages/Pages.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomePage(),
    DoctorPage(),
    SignInScreen(),
    SignUpScreen(),
    SettingsPage(),
  ];

  final Map<String, IconData> _icons = const {
    'Home': LineAwesomeIcons.home,
    'Doctor': LineAwesomeIcons.stethoscope,
    'pharmacy': Icons.shopping_bag_outlined,
    'Notifications': LineAwesomeIcons.bell,
    'Settings and More': LineAwesomeIcons.cog,
  };

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<AppBarCubit>(
        create: (_) => AppBarCubit(),
        child: _screens[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: _icons
            .map((title, icon) => MapEntry(
                title,
                BottomNavigationBarItem(
                  icon: Icon(icon, size: 30.0),
                  label: title,
                )))
            .values
            .toList(),
        currentIndex: _currentIndex,
        selectedItemColor: Palette.blueColor,
        selectedFontSize: 1,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 1,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}
