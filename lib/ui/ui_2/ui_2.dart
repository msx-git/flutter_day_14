import 'package:flutter/material.dart';
import 'package:flutter_day_14/generated/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UI2 extends StatelessWidget {
  const UI2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 375.w,
        height: 812.h,
        child: Stack(
          children: [
            Container(
              width: 375.w,
              height: 250.h,
              padding: EdgeInsets.only(
                top: 70.h,
                left: 40.w,
              ),
              decoration: const BoxDecoration(color: Color(0xfffceee6)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(14.r),
                    child: Image.asset(
                      Assets.imagesFace2,
                      height: 110.h,
                      width: 110.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Jack",
                        style: TextStyle(
                          color: const Color(0xff21327e),
                          fontWeight: FontWeight.w700,
                          fontSize: 20.sp,
                        ),
                      ),
                      SizedBox(height: 8.w),
                      Text(
                        'Party organizer',
                        style: TextStyle(
                          color: const Color(0xff21327e).withOpacity(0.6),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 12.w),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.w,
                          vertical: 3.h,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: const Color(0xffe55c5c)),
                        child: Text(
                          'Read more',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),

            ///
            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.only(
                  top: 40.h,
                  left: 30.w,
                ),
                height: 590.h,
                width: 375.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.r),
                    topRight: Radius.circular(40.r),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'October ',
                        style: TextStyle(
                          color: const Color(0xff21327e),
                          fontWeight: FontWeight.w800,
                          fontSize: 22.sp,
                        ),
                        children: [
                          TextSpan(
                            text: 'Holidays',
                            style: TextStyle(
                              color: const Color(0xff21327e).withOpacity(0.6),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row()
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
