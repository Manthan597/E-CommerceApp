import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final text;
  final textSize;
  final textColor;
  final onTap;

  const TextWidget(
      {Key key, this.text, this.textSize, this.textColor, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: onTap,
        child: Text(
          text,
          style: TextStyle(
            fontSize: textSize,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
