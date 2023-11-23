import 'package:flutter/material.dart';
import 'package:grocery_app/Core/Utils/app_color.dart';
import 'package:grocery_app/Features/Splash_Screen/Presentation/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primary,
      body: SplashViewBody(),
    );
  }
}
