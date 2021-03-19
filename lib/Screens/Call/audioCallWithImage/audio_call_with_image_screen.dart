import 'package:flutter/material.dart';
import 'package:pillpacklk_android/Constants.dart';

import 'components/body.dart';

class AudioCallWithImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
