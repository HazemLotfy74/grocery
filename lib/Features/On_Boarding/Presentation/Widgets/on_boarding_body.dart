import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/Core/Utils/app_text_style.dart';
import 'package:grocery_app/Features/Auth/presentation/pages/auth_page.dart';
import 'package:grocery_app/Features/On_Boarding/Presentation/Widgets/page_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../Core/Utils/app_color.dart';
import '../../../../Core/Utils/app_size_config.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  PageController? pageController;

  @override
  void initState() {
    // TODO: implement initState
    pageController = PageController(
      initialPage: 0,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(pageController: pageController),
        Positioned(
          bottom: SizeConfig.defaultSize! * 12,
          right: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Get.to(() => const AuthPage(),duration: const Duration(seconds: 2),transition: Transition.noTransition);
                    },
                    child: Text(
                      'Skip',
                      style: AppTextStyles.paragraphMedium15
                          .copyWith(color: Colors.grey),
                    )),
                SmoothPageIndicator(
                  controller: pageController!,
                  count: 3,
                  effect: const ScrollingDotsEffect(
                      activeDotColor: AppColors.primaryDark,
                      dotHeight: 8,
                      dotWidth: 8,
                      paintStyle: PaintingStyle.fill),
                ),
                GestureDetector(
                    onTap: () {
                      if (pageController!.page! < 2) {
                        pageController?.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.decelerate,
                        );
                      } else {
                        Get.to(() => const AuthPage(),transition: Transition.zoom,duration: const Duration(seconds: 2));
                      }
                    },
                    child: Text(
                      'Next',
                      style: AppTextStyles.paragraphMedium15
                          .copyWith(color: AppColors.primaryDark),
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
