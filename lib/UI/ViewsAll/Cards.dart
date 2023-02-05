import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kazisohagapps/UI/Constains/Colors.dart';

import '../Constains/Strings.dart';

class PositionedCard extends StatelessWidget {
  final List<Map<String, dynamic>> GridMap = [
    {
      "title": AppStrings.OnlineClassRoutine,
      "subtitle": AppStrings.SaveDate,
    },
    {
      "title": AppStrings.OfficeWorkList,
      "subtitle": AppStrings.SaveDate,
    },
    {
      "title": AppStrings.DayTask,
      "subtitle": AppStrings.SaveDate,
    },
  ];
  final List _imgAll = [
    Container(
      height: 29.h,
      width: 35.w,
      decoration: BoxDecoration(
        color: AppColors.CardImgColorAll,
        borderRadius: BorderRadius.all(
          Radius.circular(1.r),
        ),
      ),
      child: Image.asset(
        "images/group.png",
        color: AppColors.CardColor,
      ),
    ),
    Container(
      height: 29.h,
      width: 35.w,
      decoration: BoxDecoration(
        color: AppColors.CardImgColorTwo,
        borderRadius: BorderRadius.all(
          Radius.circular(1.r),
        ),
      ),
      child: Image.asset(
        "images/group.png",
        color: AppColors.CardColor,
      ),
    ),
    Container(
      height: 29.h,
      width: 35.w,
      decoration: BoxDecoration(
        color: AppColors.CardImgColorOne,
        borderRadius: BorderRadius.all(
          Radius.circular(1.r),
        ),
      ),
      child: Image.asset(
        "images/group.png",
        color: AppColors.CardColor,
      ),
    ),
  ];
  int get index => 0;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        height: 100.h,
        width: 360.w,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: GridMap.length,
          itemBuilder: (_, indext) {
            return Padding(
                padding: EdgeInsets.only(left: 15).r,
                child: Container(
                  width: 131.w,
                  height: 91.h,
                  decoration: BoxDecoration(
                    color: AppColors.CardColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.r),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10).r,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _imgAll[indext],
                        Text(
                          "${GridMap.elementAt(index)["title"]}",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.BlackTitleColor),
                        ),
                        Text(
                          "Save: ${GridMap.elementAt(index)["subtitle"]}",
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.BlackSubTitleColor),
                        ),
                      ],
                    ),
                  ),
                ));
          },
        ),
      ),
    );
  }
}
