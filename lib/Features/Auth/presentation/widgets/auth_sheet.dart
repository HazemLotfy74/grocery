import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/Core/Utils/app_text_style.dart';
import 'package:grocery_app/Features/Auth/presentation/pages/login_page.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../Core/Utils/app_color.dart';
import '../../../../Core/widgets/Custom_button.dart';

class AuthSheet extends StatelessWidget {
  const AuthSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Welcome",
          style: AppTextStyles.semiBold25
              .copyWith(fontWeight: FontWeight.w900),
        ),
        Text(
          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonum",
          style: AppTextStyles.semiBold15.copyWith(letterSpacing: 0.45),
        ),
        const SizedBox(height: 20,),
        CustomButton(
            color: AppColors.background,
            widget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Logo(
                  Logos.google,
                  size: 22,
                ),
                const SizedBox(
                  width: 25,
                ),
                Text(
                  'Continue with google',
                  style: AppTextStyles.semiBold15
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            )),
        const SizedBox(
          height: 15,
        ),
        CustomButton(
            linearGradient: const LinearGradient(colors: [
              AppColors.primary,
              AppColors.primaryDark,
            ]),
            widget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  FontAwesome.circle_user,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 25,
                ),
                Text(
                  'Create an account',
                  style: AppTextStyles.semiBold15.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account ?',
              style: AppTextStyles.label15.copyWith(color: AppColors.text),
            ),
            TextButton(onPressed: () {
              Get.to(()=>const LoginPage(),transition: Transition.downToUp);
            }, child: Text('Login',style: AppTextStyles.semiBold15.copyWith(color: Colors.black),))
          ],
        )
      ],
    );
  }
}