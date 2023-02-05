import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kazisohagapps/UI/ViewsAll/Cards.dart';
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
        Stack(
          alignment: Alignment.center,
          children: [
            Expanded(
              child: Image.asset(
                'images/bg.png',
                height: 386.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Image.asset(
                'images/bgt.png',
                height: 386.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 386.h,
              width: double.infinity,
              decoration: BoxDecoration(
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
          ],
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
                    color: AppColors.TitleWhiteColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                AppStrings.Lets,
                style: TextStyle(
                    color: AppColors.SubtitleWhiteColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
          AppContainer(
            40.h,
            40.w,
            AppColors.UnActiveColor,
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
            Border: Border.all(width: 2.h, color: AppColors.battonColor),
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
            child: Container(
              height: 145.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                border: Border.all(width: 1.h, color: AppColors.bannerWhiteColor),
                color: AppColors.bannerWhiteColor,
              ),
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
                          Color: AppColors.TitleWhiteColor),
                      SizedBox(
                        height: 12.h,
                      ),
                      AppSText(
                          text: AppStrings.YourOneStop,
                          fontsize: 12.sp,
                          FontWeight: FontWeight.w400,
                          Color: AppColors.SubtitleWhiteColor),
                      SizedBox(
                        height: 21.h,
                      ),
                      InkWell(
                        onDoubleTap: () {},
                        child: Container(
                          height: 31.h,
                          width: 109.w,
                          decoration: BoxDecoration(
                              color: AppColors.battonColor,
                              borderRadius: BorderRadius.circular(70.h),
                              border: Border.all(
                                  width: 2.w,
                                  color: AppColors.BorderColor)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.play_arrow_rounded,
                                color: AppColors.TitleWhiteColor,
                              ),
                              AppSText(
                                text: AppStrings.WatchVideo,
                                fontsize: 12.sp,
                                FontWeight: FontWeight.w500,
                                Color: AppColors.TitleWhiteColor,
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
              Color: AppColors.TitleWhiteColor),
          AppSText(
              text: AppStrings.SeeAll,
              fontsize: 12.sp,
              FontWeight: FontWeight.w400,
              Color: AppColors.SubtitleWhiteColor),
        ],
      ),
    );
  }
}
