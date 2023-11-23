
import 'package:flutter/material.dart';
import '../../../../Core/Utils/app_size_config.dart';
import '../../../../Core/Utils/app_text_style.dart';
import '../../../../Core/widgets/custom_size_box.dart';

class PageViewItems extends StatelessWidget {
  const PageViewItems({super.key, required this.image, required this.title, required this.subTitle});
  final String image;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          HeightSizeBox(value: SizeConfig.defaultSize!*20),
          SizedBox(height: SizeConfig.defaultSize!*27,child:Image.asset(image),),
          const HeightSizeBox(value: 80),
          Text(title,style: AppTextStyles.semiBold25.copyWith(fontWeight: FontWeight.bold),),
          const HeightSizeBox(value: 15),
          Text(subTitle,style: AppTextStyles.paragraphRegular,textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
