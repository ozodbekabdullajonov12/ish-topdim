import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnbardingV2 extends StatelessWidget {
  const OnbardingV2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Keyingisi",
              style: TextStyle(
                color: Color(0xff0D1D2C),
                fontFamily: "Inter",
                fontSize: 24.w,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            "O'ZBEKISTONDAGI BIRINCHI ISH TOPISH PLATFORMASI",
            style: TextStyle(
              color: Color(0xff0D1D2C),
              fontWeight: FontWeight.w800,
              fontSize: 64.w,
              fontFamily: "Inter",
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 10.h),
        child: Container(
          width: double.infinity,
          height: 134.w,
          margin: EdgeInsets.symmetric(horizontal: 56.w),
          decoration: BoxDecoration(
            color: Color(0xff0D1D2C),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              "Keyingisi",
              style: TextStyle(
                color: Colors.white,
                fontSize: 48.w,
                fontWeight: FontWeight.w400,
                fontFamily: "Inter",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
