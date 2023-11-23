import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/Core/Utils/app_color.dart';
import 'package:grocery_app/Core/Utils/app_text_style.dart';
import 'package:grocery_app/Core/widgets/Custom_button.dart';
import 'package:grocery_app/Core/widgets/custom_size_box.dart';
import 'package:grocery_app/Core/widgets/custom_textform_field.dart';
import 'package:grocery_app/Features/Auth/presentation/pages/register_page.dart';
import 'package:grocery_app/Features/HomePage/presentation/pages/home_page.dart';

class LoginSheet extends StatefulWidget {
  const LoginSheet({super.key});

  @override
  State<LoginSheet> createState() => _LoginSheetState();
}

class _LoginSheetState extends State<LoginSheet> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Welcome back !",
          style: AppTextStyles.semiBold25,
        ),
        Text(
          "Sign in to your account",
          style: AppTextStyles.semiBold15.copyWith(color: AppColors.text),
        ),
        const HeightSizeBox(value: 25),
        const CustomTextField(
          hintText: 'Email Address',
          prefixIcon: Icons.email_outlined,
        ),
        const HeightSizeBox(value: 10),
        const CustomTextField(
            hintText: 'Password',
            prefixIcon: Icons.lock,
            widget: Icon(Icons.remove_red_eye_outlined)),
        Row(
          children: [
            Checkbox(
              shape: const CircleBorder(),
              activeColor: AppColors.primaryDark,
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            Text('Remember Me',style: AppTextStyles.semiBold15.copyWith(color: AppColors.text),),
            const Spacer(),
            TextButton(onPressed: () {}, child:Text('Forgot password',style: AppTextStyles.semiBold15.copyWith(color: AppColors.link),),)
          ],
        ),
        CustomButton(
          onTap: () => Get.to(()=> HomePage()),
          widget: Center(
              child: Text(
            'Login',
            style: AppTextStyles.semiBold15.copyWith(color: Colors.white),
          )),
          linearGradient: const LinearGradient(
              colors: [AppColors.primary, AppColors.primaryDark]),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don’t have an account ?',
              style: AppTextStyles.label15.copyWith(color: AppColors.text),
            ),
            TextButton(onPressed: () {
              Get.to(()=>const RegisterPage(),transition: Transition.downToUp);
            }, child: Text('Sign Up',style: AppTextStyles.semiBold15.copyWith(color: Colors.black),))
          ],
        )
      ],
    );
  }
}
