import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Constains/Colors.dart';
import '../Constains/Strings.dart';
import '../Widgets/Container.dart';
import '../Widgets/Text.dart';

class bgPage extends StatelessWidget {
  const bgPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: <Widget>[
        Expanded(
          child: Container(
            height: 430.h,
            width: double.infinity,
          ),
        ),
        Container(
          height: 386.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 0, 158, 13),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 50.h,
              ),
              AppBar(),
              SizedBox(
                height: 37.h,
              ),
              BannerBg(),
              SizedBox(
                height: 32.h,
              ),
              SeeAll(),
            ],
          ),
        ),
        PositionedCard(),
        
      ],
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15, left: 15).r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppStrings.hi,
                style: TextStyle(
                    color: AppColors.TextWhite,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                AppStrings.Lets,
                style: TextStyle(
                    color: AppColors.BennarColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
          AppContainer(
            40.h,
            40.w,
            Color.fromARGB(255, 175, 76, 89),
            Center(
              child: ClipOval(
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  'images/sohag.jpg',
                  height: 40.h,
                  width: 40.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            BorderRadius: BorderRadius.circular(30.h),
            Border: Border.all(width: 2.h),
          ),
        ],
      ),
    );
  }
}

class BannerBg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15, left: 15).r,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Expanded(
            child: AppContainer(
              145.h,
              double.infinity,
              Colors.deepOrange,
              BorderRadius: BorderRadius.circular(15.h),
              Border: Border.all(width: 1.h),
              InkWell(
                onTap: () {},
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 16,
                      left: 16,
                      bottom: 16,
                    ).r,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppSText(
                            text: AppStrings.WelcometoTickTickTask,
                            fontsize: 14.sp,
                            FontWeight: FontWeight.w600,
                            Color: AppColors.TextWhite),
                        SizedBox(
                          height: 12.h,
                        ),
                        AppSText(
                            text: AppStrings.YourOneStop,
                            fontsize: 12.sp,
                            FontWeight: FontWeight.w400,
                            Color: AppColors.BennarColor),
                        SizedBox(
                          height: 21.h,
                        ),
                        InkWell(
                          onDoubleTap: () {},
                          child: AppContainer(
                            31.h,
                            109.w,
                            Color.fromARGB(181, 2, 185, 27),
                            BorderRadius: BorderRadius.circular(70.h),
                            Border: Border.all(width: 2.h),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.play_arrow_rounded,
                                  color: AppColors.TextWhite,
                                ),
                                AppSText(
                                  text: AppStrings.WatchVideo,
                                  fontsize: 12.sp,
                                  FontWeight: FontWeight.w500,
                                  Color: AppColors.TextWhite,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -15,
            right: -10,
            child: Container(
              child: Image.asset(
                'images/bnr.png',
                height: 100.h,
                width: 100.w,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SeeAll extends StatelessWidget {
  const SeeAll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15, left: 15).r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppSText(
              text: AppStrings.ReminderTask,
              fontsize: 14.sp,
              FontWeight: FontWeight.w600,
              Color: AppColors.TextWhite),
          AppSText(
              text: AppStrings.SeeAll,
              fontsize: 12.sp,
              FontWeight: FontWeight.w400,
              Color:Colors.white),
        ],
      ),
    );
  }
}

class PositionedCard extends StatelessWidget {
  const PositionedCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        height: 100.h,
        width: 360.w,
        child: ListView.builder(
          semanticChildCount: 4,
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (_, indext) {
            return Padding(
                padding: EdgeInsets.only(left: 15).r,
                child: Container(
                  width: 131.w,
                  height: 91.h,
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.r),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5).r,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "images/bnr.png",
                          height: 28.h,
                          width: 38.w,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Titl dgd e",
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Cost dfg gdfgdsfg d",
                          style: TextStyle(
                              fontSize: 10.sp, fontWeight: FontWeight.w400),
                        )
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
