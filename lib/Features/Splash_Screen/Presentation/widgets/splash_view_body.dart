
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:grocery_app/Features/On_Boarding/Presentation/Pages/on_board_view.dart';
import '../../../../Core/Utils/app_size_config.dart';
import '../../../../Core/Utils/app_text_style.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    getToHome();
  }

  void getToHome() {
    Future.delayed(
      const Duration(seconds: 7),
          () {
        Get.to(
                ()=>const OnBoardingView(),
            transition: Transition.rightToLeft
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: const Text(
            'Grocery App',
            style: AppTextStyles.titleBold,
          ).animate().fadeIn(
              duration: const Duration(seconds: 2),
              delay: const Duration(seconds: 1)),
        ),
      ],
    );
  }
}
