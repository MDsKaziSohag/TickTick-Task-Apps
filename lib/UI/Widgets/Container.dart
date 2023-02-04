import 'package:flutter/cupertino.dart';

Widget AppContainer(height, width, Color, Widget, {BorderRadius, Border}) {
  return Container(
    height: height,
    width: width,
    decoration:
        BoxDecoration(color: Color, border: Border, borderRadius: BorderRadius),
    child: Widget,
  );
}
