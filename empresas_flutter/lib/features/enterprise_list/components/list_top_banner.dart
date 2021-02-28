import 'package:flutter/material.dart';

class ListTopBanner extends StatelessWidget {
  final BoxConstraints cts;

  const ListTopBanner({Key key, @required this.cts}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: cts.maxHeight * 0.2,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.png'), fit: BoxFit.cover),
        ),
      );
}
