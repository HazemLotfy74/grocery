import 'package:flutter/material.dart';
import 'package:grocery_app/Features/Auth/presentation/widgets/register_sheet.dart';
import '../../../../Core/Utils/app_image.dart';
import '../../../../Core/Utils/app_size_config.dart';
import '../widgets/auth_page_body.dart';
import '../widgets/custom_bottom_sheet.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: const AuthPageBody(authImage: AppImages.authImage3),
      bottomSheet: CustomBottomSheet(height: SizeConfig.defaultSize!*44, widget: const RegisterSheet()),
    );
  }
}
