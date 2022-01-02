import 'package:flutter/material.dart';

class CustomLoadingIndicator extends StatelessWidget {
  final double size;
  final double strokeWidth;
  final Color? color;
  final Color? backgroundColor;

  const CustomLoadingIndicator({
    Key? key,
    this.size = 22.0,
    this.strokeWidth = 2.0,
    this.color,
    this.backgroundColor,
  }) : super(key: key);

  const CustomLoadingIndicator.forPrimary({
    Key? key,
    this.size = 22.0,
    this.strokeWidth = 2.0,
    this.color = const Color(0xff27AE60),
    this.backgroundColor = Colors.white,
  }) : super(key: key);

  const CustomLoadingIndicator.main({
    Key? key,
    this.size = 34.0,
    this.strokeWidth = 3.0,
    this.color,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size(size, size),
      child: CircularProgressIndicator(
        strokeWidth: strokeWidth,
        backgroundColor: color ?? Theme.of(context).primaryColor.withOpacity(0.3),
        valueColor: AlwaysStoppedAnimation<Color>(
          backgroundColor ?? Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
