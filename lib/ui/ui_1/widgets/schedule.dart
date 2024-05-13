import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Schedule extends StatelessWidget {
  const Schedule(
      {super.key,
        required this.title,
        required this.imageLink,
        required this.time});

  final String title;
  final String imageLink;
  final String time;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.r),
            child: Image.asset(
              imageLink,
              height: 110.h,
              width: 95.w,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            title,
            style: TextStyle(
              color: const Color(0xff21327e),
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            time,
            style: TextStyle(
              color: const Color(0xff21327e).withOpacity(0.4),
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
