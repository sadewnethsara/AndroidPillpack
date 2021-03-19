import 'package:flutter/material.dart';
import 'package:pillpacklk_android/Constants.dart';
import 'package:pillpacklk_android/Widgets/Widgets.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      bodyHeight: MediaQuery.of(context).size.height,
      title: "SIGN IN",
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 30),
              Text(
                "Let's sign you in",
                style: TextStyle(fontSize: 26),
              ),
              SizedBox(height: 5),
              Text(
                "Welcome back, you've been missed!",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 35),
              TextField(
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 15),
              TextField(
                keyboardType: TextInputType.text,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
              SizedBox(height: 0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "By signing in, you accept our",
                    style: TextStyle(fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Terms and Conditions",
                      style: TextStyle(fontSize: 15),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
