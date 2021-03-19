import 'package:flutter/material.dart';
import 'package:pillpacklk_android/Widgets/Widgets.dart';

class PaymentHistory extends StatelessWidget {
  const PaymentHistory({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      title: "PAYMENT HISTORY",
      bodyHeight: MediaQuery.of(context).size.height,
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
