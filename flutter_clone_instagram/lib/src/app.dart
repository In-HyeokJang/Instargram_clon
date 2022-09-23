import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clone_instagram/src/components/image_data.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(),
        body: Container(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false, // 라벨 삭제
          currentIndex: 0, //번호에 따라 활성화
          elevation: 0,
          onTap: (value) {},
          items: [
            BottomNavigationBarItem(
              icon: ImageData(IconsPath.homeOff),
              activeIcon: ImageData(IconsPath.homeOn),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: ImageData(IconsPath.searchOff),
              activeIcon: ImageData(IconsPath.searchOn),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: ImageData(IconsPath.uploadIcon),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: ImageData(IconsPath.activeOff),
              activeIcon: ImageData(IconsPath.activeOn),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
              ),
              label: 'home',
            ),
          ],
        ),
      ),
      onWillPop: () async {
        return false;
      },
    ); // WillPopScope
  }
}
