import 'package:flutter/cupertino.dart';

class AppSText extends StatelessWidget {
  final String text;
  final double fontsize;
  final FontWeight;
  final Color;
  AppSText({
    Key? key,
    required this.text,
    required this.fontsize,
    required this.FontWeight,
    required this.Color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontWeight: FontWeight,
        color: Color,
      ),
    );
  }
}


