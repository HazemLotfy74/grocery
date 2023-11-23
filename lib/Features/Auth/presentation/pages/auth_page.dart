import 'package:flutter/material.dart';
import 'package:grocery_app/Core/Utils/app_image.dart';
import 'package:grocery_app/Core/Utils/app_size_config.dart';
import 'package:grocery_app/Features/Auth/presentation/widgets/auth_sheet.dart';
import '../widgets/auth_page_body.dart';
import '../widgets/custom_bottom_sheet.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: CustomBottomSheet(height: SizeConfig.defaultSize!*35, widget: const AuthSheet(),),
      body: const AuthPageBody(authImage: AppImages.authImage1),
    );
  }
}


