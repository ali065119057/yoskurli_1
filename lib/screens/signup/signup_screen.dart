import 'package:flutter/material.dart';
import 'components/signup_form.dart';
import 'components/socal_sign_up.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(40),
            child: Image.asset(
              "assets/images/logo.png",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(width: 400, child: SignUpForm()),
            ],
          ),
          const SizedBox(width: 400, child: SocalSignUp())
        ]));
  }
}
