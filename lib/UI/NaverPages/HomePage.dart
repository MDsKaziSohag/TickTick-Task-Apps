import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kazisohagapps/UI/Constains/Strings.dart';
import 'package:kazisohagapps/UI/NaverPages/RecordPage.dart';
import 'package:kazisohagapps/UI/NaverPages/SearchPage.dart';
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
