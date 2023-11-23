import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/Features/Auth/presentation/pages/login_page.dart';
import 'package:grocery_app/Features/HomePage/presentation/pages/home_page.dart';
import '../../../../Core/Utils/app_color.dart';
import '../../../../Core/Utils/app_text_style.dart';
import '../../../../Core/widgets/Custom_button.dart';
import '../../../../Core/widgets/custom_size_box.dart';
import '../../../../Core/widgets/custom_textform_field.dart';

class RegisterSheet extends StatelessWidget {
  const RegisterSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Create account",
          style: AppTextStyles.semiBold25,
        ),
        Text(
          "Quickly create account",
          style: AppTextStyles.semiBold15.copyWith(color: AppColors.text),
        ),
        const HeightSizeBox(value: 25),
        const CustomTextField(
          hintText: 'Email Address',
          prefixIcon: Icons.email_outlined,
        ),
        const HeightSizeBox(value: 10),
        const CustomTextField(
          hintText: 'Phone number',
          prefixIcon: Icons.phone,
        ),
        const HeightSizeBox(value: 10),
        const CustomTextField(
            hintText: 'Password',
            prefixIcon: Icons.lock,
            widget: Icon(Icons.remove_red_eye_outlined)),
        const HeightSizeBox(value: 10),
        CustomButton(
          onTap: () => Get.to(()=> HomePage()),
          widget: Center(
              child: Text(
                'Sign Up',
                style: AppTextStyles.semiBold15.copyWith(color: Colors.white),
              )),
          linearGradient: const LinearGradient(
              colors: [AppColors.primary, AppColors.primaryDark]),
        ),
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
