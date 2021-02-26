import 'package:flutter/material.dart';

void main() {
  runApp(IoasysApp());
}

class IoasysApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ioasys',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
    );
  }
}
