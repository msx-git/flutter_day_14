import 'package:flutter/material.dart';
import 'package:flutter_day_14/generated/assets.dart';
import 'package:flutter_day_14/ui/ui_1/widgets/schedule.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UI1 extends StatelessWidget {
  const UI1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 375.w,
        height: 812.h,
        child: Stack(
          children: [
            Image.asset(
              Assets.imagesImage,
              height: 400.h,
              width: 375.w,
              fit: BoxFit.cover,
            ),

            ///
            Positioned(
              top: 340.h,
              child: Container(
                height: 165.h,
                width: 375.w,
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
                decoration: BoxDecoration(
                  color: const Color(0xffe55c5c),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.r),
                    topRight: Radius.circular(40.r),
                  ),
                ),
                alignment: Alignment.topCenter,
                child: Row(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Autumn day",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Hello Jack",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 15.sp,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: Image.asset(Assets.imagesFace1,
                            width: 45.w, height: 45.h, fit: BoxFit.cover)),
                    SizedBox(width: 12.w),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 5.w,
                          height: 5.h,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          width: 5.w,
                          height: 5.h,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

            ///
            Positioned(
              bottom: 0,
              child: Container(
                height: 342.h,
                width: 375.w,
                padding: EdgeInsets.only(
                  left: 30.w,
                  right: 30.w,
                  top: 30.h,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.r),
                    topRight: Radius.circular(40.r),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.r),
                          decoration: BoxDecoration(
                            color: Colors.redAccent.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Image.asset(
                            Assets.iconsTeaLeaf,
                            height: 35.h,
                            width: 35.w,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10.r),
                          decoration: BoxDecoration(
                            color: Colors.redAccent.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Image.asset(
                            Assets.iconsUmbrella,
                            height: 35.h,
                            width: 35.w,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10.r),
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Image.asset(
                            Assets.iconsMapleLeaf,
                            height: 35.h,
                            width: 35.w,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10.r),
                          decoration: BoxDecoration(
                            color: Colors.redAccent.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Image.asset(
                            Assets.iconsShower,
                            height: 35.h,
                            width: 35.w,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 18.h),
                    RichText(
                      text: TextSpan(
                        text: 'Day ',
                        style: TextStyle(
                          color: const Color(0xff21327e),
                          fontWeight: FontWeight.w800,
                          fontSize: 20.sp,
                        ),
                        children: [
                          TextSpan(
                            text: 'Schedule',
                            style: TextStyle(
                              color: const Color(0xff21327e).withOpacity(0.6),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 18.h),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const Schedule(
                            title: 'Wedding',
                            imageLink: Assets.imagesWedding,
                            time: '03:50 time',
                          ),
                          SizedBox(width: 22.w),
                          const Schedule(
                            title: 'Birthdays',
                            imageLink: Assets.imagesBirthday,
                            time: '06:35 time',
                          ),
                          SizedBox(width: 22.w),
                          const Schedule(
                            title: 'Party',
                            imageLink: Assets.imagesParty,
                            time: '10:25 time',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}