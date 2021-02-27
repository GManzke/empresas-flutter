import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final Function() onLoginPressed;

  const LoginButton({Key key, this.onLoginPressed}) : super(key: key);

  @override
  Widget build(BuildContext ctx) => RaisedButton(onPressed: onLoginPressed);
}
