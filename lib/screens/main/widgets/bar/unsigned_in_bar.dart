// @dart=2.9
import 'package:emotect/screens/login/widgets/body.dart';
import 'package:flutter/material.dart';

import '../../main_viewmodel.dart';
import './bar.dart';

class UnsignedInBar extends Bar {
  final MainViewmodel _viewmodel;
  const UnsignedInBar(viewmodel) : _viewmodel = viewmodel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'Emotect',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              Text(
                'Detect Your Emotion',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          ElevatedButton(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(Size(250, 50)),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
            ),
            child: Text(
              'Log In',
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () => _onPressLoginButton(context),
            // onPressed: () {},
          ),
        ],
      ),
    );
  }

  void _onPressLoginButton(context) async {
    final _user = await Navigator.pushNamed(context, '/login');

    if (_user != null) {
      _viewmodel.user = _user;
    }
  }
}
