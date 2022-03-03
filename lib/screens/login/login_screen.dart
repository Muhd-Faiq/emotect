// @dart=2.9
import 'package:flutter/material.dart';

import 'widgets/body.dart';

class LoginScreen extends StatelessWidget {
  static Route route() =>
      MaterialPageRoute(builder: (context) => LoginScreen());
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(true),
      child: SafeArea(
        child: Scaffold(
          body: Body(),
        ),
      ),
    );
  }
}
