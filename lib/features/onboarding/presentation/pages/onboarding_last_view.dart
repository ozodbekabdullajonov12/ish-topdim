import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingLastView extends StatelessWidget {
  const OnboardingLastView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ISH IZLASHGA\n1 QADAM QOLDI",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff0D1D2C),
                  fontWeight: FontWeight.w800,
                  fontSize: 64.w,
                  fontFamily: "Inter",
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 45.0,horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 752.h,
                height: 134.w,
                decoration: BoxDecoration(
                  color: Color(0xffFF9D00),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Ro'yxatdan o'tish",
                    style: TextStyle(
                      fontSize: 48.w,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Inter",
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 752.h,
                height: 134.w,
                decoration: BoxDecoration(
                  color: Color(0xffD9D9D9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Akkauntga kirish",
                    style: TextStyle(
                      fontSize: 48.w,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Inter",
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
