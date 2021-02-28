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
        ClipPath(
          clipper: ShapeClipper(),
          child: Container(
            height: cts.maxHeight * 0.42,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background.png'),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        Column(
          children: [
            Image.asset('assets/logo_home.png', height: 42, fit: BoxFit.cover,),
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

class ShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    Offset curveStartPoint = Offset(0, size.height * 0.74);
    Offset curveEndPoint = Offset(size.width, size.height * 0.74);
    path.lineTo(curveStartPoint.dx, curveStartPoint.dy);
    path.quadraticBezierTo(
        size.width / 2, size.height * 1.05, curveEndPoint.dx, curveEndPoint.dy);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(_) => true;
}
