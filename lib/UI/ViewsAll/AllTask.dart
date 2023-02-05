import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kazisohagapps/UI/Widgets/Text.dart';

import '../Constains/Colors.dart';
import '../Constains/Strings.dart';

class AllTaskPage extends StatelessWidget {
  const AllTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 25.h),
        AllTasks(),
        SizedBox(height: 12.h),
        AllTasksCard(),
      ],
    );
  }
}

class AllTasks extends StatelessWidget {
  const AllTasks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15).r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppSText(
              text: AppStrings.AllTasks,
              fontsize: 14.sp,
              FontWeight: FontWeight.w600,
              Color: AppColors.BlackTitleColor),
          AppSText(
              text: AppStrings.SeeAll,
              fontsize: 12.sp,
              FontWeight: FontWeight.w400,
              Color: AppColors.BlackSubTitleColor),
        ],
      ),
    );
  }
}

class AllTasksCard extends StatelessWidget {
  final List<Map<String, dynamic>> GridMap = [
    {
      "img": Container(
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
          color: Colors.white,
        ),
      ),
      "title": AppStrings.OnlineClassRoutine,
      "subtitle": AppStrings.Date,
    },
    {
      "img": Container(
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
          color: Colors.white,
        ),
      ),
      "title": AppStrings.OnlineClassRoutine,
      "subtitle": AppStrings.Date,
    },
    {
      "img": Container(
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
          color: Colors.white,
        ),
      ),
      "title": AppStrings.OnlineClassRoutine,
      "subtitle": AppStrings.Date,
    },
  ];

  int get index => 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15).r,
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 12,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, mainAxisSpacing: 12.5, mainAxisExtent: 65),
          itemBuilder: (_, indext) {
            return Container(
              height: 62.h,
              decoration: BoxDecoration(
                color: AppColors.CardColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.r),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 10, bottom: 10)
                    .r,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GridMap.elementAt(index)["img"],
                    SizedBox(width: 15.h),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${GridMap.elementAt(index)["title"]}",
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.w500, color: AppColors.BlackTitleColor),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          "Save: ${GridMap.elementAt(index)["subtitle"]}",
                          style: TextStyle(
                              fontSize: 10.sp, fontWeight: FontWeight.w400,color: AppColors.BlackSubTitleColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
