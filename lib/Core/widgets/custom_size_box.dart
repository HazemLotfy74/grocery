import 'package:flutter/material.dart';

class HeightSizeBox extends StatelessWidget {
  const HeightSizeBox({super.key, required this.value});
  final double value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: value,
    );
  }
}
class WidthSizeBox extends StatelessWidget {
  const WidthSizeBox({super.key, required this.value});
  final double value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: value,
    );
  }
}

