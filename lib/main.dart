import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/dependencies.dart';
import 'core/routing/router.dart';
final navigatorKey=GlobalKey<NavigatorState>();
void main() {
  runApp(const ish_topdim());
}

class ish_topdim extends StatelessWidget {
  const ish_topdim({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(760, 155),
      child: MultiBlocProvider(
        providers: providers,
        child: MaterialApp.router(
          routerConfig: router,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}