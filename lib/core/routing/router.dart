import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ish_topdim/core/routing/routes.dart';
import 'package:ish_topdim/features/onboarding/presentation/pages/onboarding_last_view.dart';
import 'package:ish_topdim/features/onboarding/presentation/pages/onboarding_v2.dart';
import '../../features/onboarding/presentation/pages/onboarding_view.dart';
import '../../main.dart';

final GoRouter router = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: Routes.onboard,
  routes: [
    GoRoute(path: Routes.onboarding, builder: (context, state) => OnboardingView()),
    GoRoute(path: Routes.onboard,builder: (context, state) => OnboardingScreen(),),
    GoRoute(path: Routes.onboardingLast,builder: (context, state) => OnboardingLastView(),),
  ],
);