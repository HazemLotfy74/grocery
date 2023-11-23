import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:grocery_app/Core/Utils/app_size_config.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,this.color, required this.widget, this.linearGradient, this.onTap});
  final Color? color;
  final Widget widget;
  final Callback? onTap;
  final LinearGradient? linearGradient;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: SizeConfig.screenWidth,
        height: 60,
        decoration: BoxDecoration(
          gradient: linearGradient,
          borderRadius:BorderRadius.circular(10),
          color: color
        ),
        child: widget
      ),
    );
  }
}
