import 'package:empresas_flutter/extensions/constraints_extension.dart';
import 'package:flutter/material.dart';

class LoginTopBanner extends StatelessWidget {
  final BoxConstraints cts;

  const LoginTopBanner({Key key, @required this.cts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: cts.maxHeight * 0.3,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background.png'), fit: BoxFit.cover),
            borderRadius: BorderRadius.vertical(
              bottom: Radius.elliptical(cts.maxWidth, 100),
            ),
          ),
        ),
        Column(
          children: [
            Image.asset('assets/logo_home.png'),
            SizedBox(
              height: cts.padding(0.04),
            ),
            Text(
              'Seja bem vindo ao empresas!',
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ],
        ),
      ],
    );
  }
}
