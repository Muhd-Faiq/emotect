import 'package:flutter/material.dart';

import '../../../models/user.dart';
import '../../view.dart';
import '../login_viewmodel.dart';
import '../../main/main_viewmodel.dart';

class Body extends StatelessWidget {
  void _onLogin(BuildContext context, LoginViewmodel viewmodel) async {
    final User _user = await viewmodel.authenticate();
    if (_user != null) Navigator.pop(context, _user);
    // if (_user != null) {
    //   final res = await MainViewmodel().getAllEmotions();
    //   if (res != null) {
    //     Navigator.pop(context, _user);
    //   }
    // }
    // if (_user != null) Navigator.pushNamed(context, '/main', arguments: _user);
  }

  void _onCancel(BuildContext context, LoginViewmodel viewmodel) {
    viewmodel.showErrorMessage = false;
    Navigator.pop(context, null);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: View(
        viewmodel: LoginViewmodel(),
        builder: (context, viewmodel, _) => SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset('assets/images/Emotect_200.png'),
              SizedBox(
                height: 20,
              ),
              Text(
                'Login',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 37,
                ),
              ),
              // Column(
              //   children: [
              //     SizedBox(
              //       height: 200,
              //     ),
              //     Text(
              //       'Login',
              //       textAlign: TextAlign.center,
              //       style: const TextStyle(
              //         fontWeight: FontWeight.bold,
              //         fontSize: 37,
              //       ),
              //     ),
              //     Text(
              //       'Get Started With Emotion Detection',
              //       textAlign: TextAlign.center,
              //       style: const TextStyle(
              //         fontWeight: FontWeight.bold,
              //         fontSize: 20,
              //       ),
              //     ),
              //   ],
              // ),
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Container(
                    width: 350,
                    child: _buildTextField(
                      context: context,
                      hint: 'Email',
                      icon: Icons.people,
                      onChanged: (value) => viewmodel.username = value,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: 350,
                    child: _buildTextField(
                      context: context,
                      hint: 'Password',
                      isObsecure: !viewmodel.showPassword,
                      icon: Icons.lock,
                      button: IconButton(
                          icon: Icon(Icons.visibility),
                          onPressed: () =>
                              viewmodel.showPassword = !viewmodel.showPassword),
                      onChanged: (value) => viewmodel.password = value,
                    ),
                  ),
                  if (viewmodel.showErrorMessage)
                    Text(
                      'Invalid username or password!',
                      style: TextStyle(color: Colors.red, fontSize: 20.0),
                    ),
                  SizedBox(
                    height: 30.0,
                  ),
                  _buildButtons(context, viewmodel),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'New User?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(width: 10.0),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/register");
                        },
                        child: new Text(
                          'Sign Up',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Theme _buildTextField(
      {context, hint, icon, isObsecure = false, button, onChanged}) {
    return Theme(
      child: TextField(
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: icon != null ? Icon(icon) : null,
          suffixIcon: button,
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orange, width: 2.0),
          ),
        ),
        obscureText: isObsecure,
        onChanged: onChanged,
      ),
      data: Theme.of(context).copyWith(primaryColor: Colors.orange),
    );
  }

  Row _buildButtons(BuildContext context, LoginViewmodel viewmodel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
          ),
          child: Text('Log in'),
          onPressed: () => _onLogin(context, viewmodel),
        ),
        SizedBox(width: 10.0),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
          ),
          child: Text('Cancel'),
          onPressed: () => _onCancel(context, viewmodel),
        ),
      ],
    );
  }
}
