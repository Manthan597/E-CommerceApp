import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final color;
  final screen;
  final onTap;
  final text;
  final icon;

  const ButtonWidget(
      {Key key, this.screen, this.onTap, this.text, this.icon, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: screen.height * 0.09,
        width: screen.width,
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(color),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0),
                  ))),
              onPressed: onTap,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon == null
                      ? SizedBox()
                      : Image.asset(
                          icon,
                          height: 25,
                          width: 25,
                        ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    text,
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ],
              ),
            )));
  }
}
