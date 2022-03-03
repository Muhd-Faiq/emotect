// @dart=2.9
import 'package:flutter/material.dart';

import 'widgets/body.dart';

import 'widgets/bar/signed_in_bar.dart';
import 'widgets/bar/unsigned_in_bar.dart';
import 'widgets/float.dart';
import 'widgets/bottombar.dart';
import '../view.dart';
import 'main_viewmodel.dart';

class MainScreen extends StatelessWidget {
  static Route route() => MaterialPageRoute(builder: (context) => MainScreen());
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: SafeArea(
        child: View(
          viewmodel: MainViewmodel(),
          builder: (_, mainViewmodel, __) {
            if (mainViewmodel.isUserSignedIn) {
              return Scaffold(
                extendBodyBehindAppBar: true,
                appBar: SignedInBar(mainViewmodel),
                body: Body(),
                bottomNavigationBar: BottomBar(),
                // floatingActionButton: Float(),
              );
            }

            return Scaffold(body: UnsignedInBar(mainViewmodel));
          },
        ),
      ),
    );
  }
}
