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
              Color:Colors.black),
          AppSText(
              text: AppStrings.SeeAll,
              fontsize: 12.sp,
              FontWeight: FontWeight.w400,
              Color:Colors.black),
        ],
      ),
    );
  }
}

class AllTasksCard extends StatelessWidget {
  const AllTasksCard({
    Key? key,
  }) : super(key: key);

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
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.r),
                ),
              ),
            );
          }),
    );
  }
}


// Container(
//       width: 131.w,
//       height: 91.h,
//       decoration: BoxDecoration(
//         color: Color(0xFfC4C4C4),
//         borderRadius: BorderRadius.all(
//           Radius.circular(10.r),
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(5).r,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image.asset(
//               "images/bnr.png",
//               height: 28.h,
//               width: 38.w,
//               fit: BoxFit.cover,
//             ),
//             Text(
//               "Titl dgd e",
//               style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
//             ),
//             Text(
//               "Cost dfg gdfgdsfg d",
//               style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400),
//             )
//           ],
//         ),
//       ),