import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({
    super.key,
    required this.title,
    this.textColor,
    this.backgroundColor,
    required this.onPressed,
    this.width,
    this.height,
    this.style,
  });

  final String title;
  Color? textColor = Colors.white;
  Color? backgroundColor = Colors.black;
  final Function() onPressed;
  final double? width;
  final double? height;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          title,
          style: style ?? TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}
