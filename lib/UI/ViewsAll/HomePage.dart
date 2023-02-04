import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kazisohagapps/UI/ViewsAll/AllTask.dart';
import 'package:kazisohagapps/UI/ViewsAll/bg.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          bgPage(),
          SizedBox(
            height: 12.h,
          ),
          AllTaskPage(),
        ],
      ),
    );
  }
}

class NavBarPage extends StatelessWidget {
  RxInt _CurrentIndex = 0.obs;

  final _pages = [MyHomePage(), AddPage(), AddPageTow()];

  @override
  Widget build(BuildContext context) {
    return Obx((() => Scaffold(
          backgroundColor: Color.fromARGB(155, 207, 207, 207),
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18).r,
              topRight: Radius.circular(18).r,
            ),
            child: Container(
              height: 70.h,
              child: BottomNavigationBar(
                  elevation: 1,
                  backgroundColor: Colors.white,
                  selectedItemColor: Colors.red,
                  selectedFontSize: 15.h,
                  unselectedFontSize: 17.h,
                  iconSize: 23.h,
                  onTap: (value) => _CurrentIndex.value = value,
                  currentIndex: _CurrentIndex.value,
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home_outlined), label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.add_outlined), label: 'Add'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.favorite_rounded), label: 'Favorite'),
                  ]),
            ),
          ),
          body: _pages[_CurrentIndex.value],
        )));
  }
}

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(213, 0, 0, 0),
    );
  }
}

class AddPageTow extends StatelessWidget {
  const AddPageTow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
    );
  }
}
