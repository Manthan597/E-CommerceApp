import 'package:flutter/cupertino.dart';

class ImageAsset extends StatelessWidget {
  final path;
  final height;
  final width;
  final fit;

  ImageAsset(this.path, this.height, this.width, this.fit);

  Widget build(BuildContext context) {
    return Image.asset(
      path,
      height: height,
      width: width,
      fit: fit,
    );
  }
}
