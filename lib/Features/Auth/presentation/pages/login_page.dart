import 'package:flutter/material.dart';
import 'package:grocery_app/Core/Utils/app_image.dart';
import 'package:grocery_app/Core/Utils/app_size_config.dart';
import 'package:grocery_app/Features/Auth/presentation/widgets/auth_page_body.dart';
import 'package:grocery_app/Features/Auth/presentation/widgets/custom_bottom_sheet.dart';
import 'package:grocery_app/Features/Auth/presentation/widgets/login_sheet.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const AuthPageBody(authImage: AppImages.authImage2),
      bottomSheet: CustomBottomSheet(height: SizeConfig.defaultSize!*42, widget: const LoginSheet()),
    );
  }
}
