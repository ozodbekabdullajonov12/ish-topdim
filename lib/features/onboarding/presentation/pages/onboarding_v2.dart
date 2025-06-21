import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ish_topdim/core/routing/routes.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingV2State();
}

class _OnboardingV2State extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> titles = [
    "O'ZBEKISTONDAGI BIRINCHI ISH TOPISH PLATFORMASI",
    "SIZGA QULAY BO’LGAN OYLIKDAGI ISHLAR",
    "ENDI ISHCHI TOPISH OSSON",
  ];

  void _nextPage() {
    if (_currentPage < titles.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      context.go(Routes.onboardingLast);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: TextButton(
              onPressed: () => _nextPage(),
              child: Text(
                "keyingisi",
                style: TextStyle(
                  color: const Color(0xff0D1D2C),
                  fontFamily: "Inter",
                  fontSize: 24.w,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: PageView.builder(
          controller: _pageController,
          itemCount: titles.length,
          onPageChanged: (index) {
            setState(() {
              _currentPage = index;
            });
          },
          itemBuilder: (context, index) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    titles[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xff0D1D2C),
                      fontWeight: FontWeight.w800,
                      fontSize: 64.w,
                      fontFamily: "Inter",
                    ),
                  ),
                  SizedBox(height: 600.w),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) {
                      final bool isActive = index == _currentPage;
                      return AnimatedContainer(
                        duration: Duration(milliseconds: 700),
                        curve: Curves.easeInOut,
                        margin: EdgeInsets.symmetric(horizontal: 5.w),
                        width: isActive ? 200.w : 74.w,
                        height: 44.w,
                        decoration: BoxDecoration(
                          color: isActive ? Color(0xffFF9D00) : Color(0xff0000003d).withValues(alpha: 0.24),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      );
                    }),
                  ),

                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 10.h),
        child: GestureDetector(
          onTap: _nextPage,
          child: Container(
            width: double.infinity,
            height: 134.w,
            margin: EdgeInsets.symmetric(horizontal: 56.w),
            decoration: BoxDecoration(
              color: const Color(0xff0D1D2C),
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
      ),
    );
  }
}
