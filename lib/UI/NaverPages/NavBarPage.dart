import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kazisohagapps/UI/Constains/Colors.dart';
import 'package:kazisohagapps/UI/Constains/Strings.dart';
import 'package:kazisohagapps/UI/NaverPages/HomePage.dart';
import 'package:kazisohagapps/UI/NaverPages/RecordPage.dart';
import 'package:kazisohagapps/UI/NaverPages/SavePage.dart';
import 'package:kazisohagapps/UI/NaverPages/SearchPage.dart';
import 'package:kazisohagapps/UI/NaverPages/SettingsPage.dart';

class NavBarPage extends StatelessWidget {
  RxInt _CurrentIndex = 0.obs;

  final _pages = [
    MyHomePage(),
    SearchPage(),
    RecordPage(),
    SavePage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Obx((() => Scaffold(
          backgroundColor: AppColors.scaffoldColor,
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18).r,
              topRight: Radius.circular(18).r,
            ),
            child: Container(
              height: 80.h,
              child: BottomNavigationBar(
                  showSelectedLabels: true,
                  showUnselectedLabels: true,
                  elevation: 1,
                  backgroundColor: AppColors.CardColor,
                  selectedItemColor: AppColors.ActiveColor,
                  unselectedItemColor: AppColors.BlackSubTitleColor,
                  selectedFontSize: 12.h,
                  unselectedFontSize: 11.h,
                  iconSize: 20.h,
                  onTap: (value) => _CurrentIndex.value = value,
                  currentIndex: _CurrentIndex.value,
                  items: [
                    BottomNavigationBarItem(
                        icon: ImageIcon(AssetImage("images/home.png")),
                        label: AppStrings.Home),
                    BottomNavigationBarItem(
                        icon: ImageIcon(AssetImage("images/search.png")),
                        label: AppStrings.Search),
                    BottomNavigationBarItem(
                        icon: ImageIcon(AssetImage("images/record.png")),
                        label: AppStrings.Record),
                    BottomNavigationBarItem(
                        icon: ImageIcon(AssetImage("images/save.png")),
                        label: AppStrings.Saved),
                    BottomNavigationBarItem(
                        icon: ImageIcon(AssetImage("images/settings.png")),
                        label: AppStrings.Settings),
                  ]),
            ),
          ),
          body: _pages[_CurrentIndex.value],
        )));
  }
}
