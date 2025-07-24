import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(160),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: AppBar(
            flexibleSpace: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(48),
                    child: Image.asset(
                      "assets/images/image1.png",
                      width: 97.2.w,
                      height: 97.2.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    "Salom Name",
                    style: TextStyle(
                      color: Color(0xff0D1D2C),
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w400,
                      fontSize: 24.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Text("Body Content"),
      ),
    );
  }
}
