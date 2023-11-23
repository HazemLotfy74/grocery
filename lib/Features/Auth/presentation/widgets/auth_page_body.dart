import 'package:flutter/material.dart';
import 'package:grocery_app/Core/Utils/app_size_config.dart';
import 'package:grocery_app/Core/Utils/app_text_style.dart';


class AuthPageBody extends StatelessWidget {
  const AuthPageBody({super.key, required this.authImage});
  final String authImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(authImage),
        Positioned(
            top: SizeConfig.defaultSize!*5,
            child: const Icon(Icons.arrow_back_outlined,color: Colors.white,size: 25,)),
        Positioned(
            top: SizeConfig.defaultSize!*5,
            right: 0,
            left: 0,
            child:  Center(child: Text('Welcome',style: AppTextStyles.semiBold20.copyWith(color: Colors.white),))),
      ],
    );
  }
}
