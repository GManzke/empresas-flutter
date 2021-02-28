import 'package:flutter/widgets.dart';

extension ConstraintsExtension on BoxConstraints {
  double padding(double size) => this.maxWidth * size;
}
