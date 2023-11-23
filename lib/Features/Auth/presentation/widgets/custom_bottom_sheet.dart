import 'package:flutter/material.dart';
import '../../../../Core/Utils/app_color.dart';
import '../../../../Core/Utils/app_size_config.dart';


class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key, required this.height, required this.widget,
  });

  final double height;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: AppColors.background2,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      width: SizeConfig.screenWidth,
      height: height,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: widget,
      ),
    );
  }
}


