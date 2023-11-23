import 'package:flutter/material.dart';
import 'package:grocery_app/Core/Utils/app_color.dart';
import 'package:grocery_app/Core/Utils/app_size_config.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText,  this.prefixIcon, this.widget, this.fillColor});
  final String hintText;
  final IconData? prefixIcon;
  final Widget? widget;
  final Color? fillColor;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: SizeConfig.screenWidth,
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          fillColor: fillColor ?? AppColors.background,
          hintText: hintText,
          prefixIcon: Icon(prefixIcon,color: AppColors.text,),
          suffixIcon: widget
        ),
      ),
    );
  }
}
