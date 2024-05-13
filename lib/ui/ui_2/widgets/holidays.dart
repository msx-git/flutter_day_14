
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Holiday extends StatelessWidget {
  const Holiday(
      {super.key,
        required this.iconColor,
        required this.holidayName,
        required this.price,
        required this.imageLink});

  final String iconColor;
  final String imageLink;
  final String holidayName;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.r),
          child: Image.asset(
            imageLink,
            height: 60.h,
            width: 60.w,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 20.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              holidayName,
              style: TextStyle(
                color: const Color(0xff21327e).withOpacity(0.6),
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 3.h),
            Text(
              "\$ ${price.toStringAsFixed(2)}",
              style: TextStyle(
                color: const Color(0xff21327e),
                fontWeight: FontWeight.w800,
                fontSize: 22.sp,
              ),
            ),
          ],
        ),
        const Spacer(),
        ZoomTapAnimation(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 1.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.r),
              color: Color(int.parse("0xff$iconColor")).withOpacity(0.6),
            ),
            child: const Text(
              'View',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        )
      ],
    );
  }
}
