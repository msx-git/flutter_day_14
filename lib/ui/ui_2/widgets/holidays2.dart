
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Holiday2 extends StatelessWidget {
  const Holiday2({super.key, required this.imageLink, required this.title});

  final String imageLink;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.r),
          child: Image.asset(
            imageLink,
            height: 140.h,
            width: 110.w,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 14.h),
        Text(
          title,
          style: GoogleFonts.inter(
            color: const Color(0xff2833af),
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
