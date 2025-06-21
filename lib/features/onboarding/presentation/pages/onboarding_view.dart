import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ish_topdim/features/onboarding/presentation/pages/onboarding_v2.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );
    _controller.forward().whenComplete(() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const OnboardingScreen()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RotationTransition(
              turns: Tween(begin: 0.0, end: 2.0).animate(_controller), // 2 rotations
              child: SvgPicture.asset(
                "assets/icons/logo.svg",
                width: 258.h,
                height: 293.w,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              "ISH TOPDIM",
              style: TextStyle(
                color: Color(0xff0D1D2C),
                fontWeight: FontWeight.w800,
                fontSize: 128.w,
                fontFamily: "Inter",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Next Page")),
    );
  }
}
