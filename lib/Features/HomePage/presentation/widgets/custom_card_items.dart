
import 'package:flutter/material.dart';
import 'package:grocery_app/Core/Utils/app_color.dart';
import 'package:grocery_app/Core/Utils/app_image.dart';
import 'package:grocery_app/Core/Utils/app_text_style.dart';
import 'package:icons_plus/icons_plus.dart';

class CustomCardItems extends StatefulWidget {
  const CustomCardItems({super.key});

  @override
  State<CustomCardItems> createState() => _CustomCardItemsState();
}

class _CustomCardItemsState extends State<CustomCardItems> {
  bool clicked = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape:const RoundedRectangleBorder(),
      clipBehavior: Clip.none,
      surfaceTintColor: Colors.white,
      elevation: 5,
      child: Stack(
        children:[
          Positioned(
              top: 5,
              right: 0,
              child: IconButton(onPressed: () {
                  setState(() {
                    clicked = true;
                  });
              }
              , icon: Icon(clicked?Icons.favorite:Icons.favorite_border,color: clicked?Colors.red:Colors.grey),)),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Image.asset(AppImages.cardImage),
                Text(r'$8.00',style: AppTextStyles.label12.copyWith(color: AppColors.primaryDark),),
                Text(r'Fresh Peach',style: AppTextStyles.semiBold15.copyWith(fontWeight: FontWeight.bold),),
                const Text(r'dozen',style: AppTextStyles.label12,),
                const SizedBox(height: 10,),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(FontAwesome.bag_shopping,color: AppColors.primaryDark,),
                      const SizedBox(width: 10,),
                      Text('Add to cart',style: AppTextStyles.paragraphMedium12.copyWith(fontWeight: FontWeight.bold),)
                    ],
                  ),
                )
              ],
            ),
          ),
        ]
      ),
    );
  }
}
