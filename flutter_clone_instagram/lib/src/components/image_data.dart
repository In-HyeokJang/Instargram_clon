import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';

class ImageData extends StatelessWidget {
  String icon;
  final double width;
  ImageData(
    this.icon, {
    Key? key,
    this.width = 55,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(icon, width: width! / Get.mediaQuery.devicePixelRatio);
  }
}

class IconsPath {
  static String get homeOff => 'assets/images/bottom_nav_home_off_icon.jpg';
  static String get homeOff => 'assets/images/bottom_nav_home_on_icon.jpg';
}
