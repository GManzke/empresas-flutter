import 'package:empresas_flutter/configuration/app_colors.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final Function() onLoginPressed;
  final bool isLoading;

  const LoginButton({Key key, this.onLoginPressed, @required this.isLoading})
      : super(key: key);

  @override
  Widget build(BuildContext ctx) => Container(
        width: double.infinity,
        child: RaisedButton(
          child: Container(
            alignment: Alignment.center,
              height: 32,
              child: isLoading
                  ? CircularProgressIndicator()
                  : Text(
                      'ENTRAR',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          onPressed: isLoading ? null : onLoginPressed,
          padding: const EdgeInsets.all(16),
          color: AppColors.primary,
        ),
      );
}
