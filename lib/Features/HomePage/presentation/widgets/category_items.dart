import 'package:flutter/material.dart';
import 'package:grocery_app/Core/Utils/app_text_style.dart';
import 'package:grocery_app/Core/widgets/custom_size_box.dart';
import 'package:icons_plus/icons_plus.dart';

class CategoryItems extends StatelessWidget {
    CategoryItems({super.key});
  List<IconData> icons = [
    FontAwesome.leaf,
    FontAwesome.apple_whole,
    FontAwesome.martini_glass,
    FontAwesome.basket_shopping,
    FontAwesome.oil_can,
    FontAwesome.kitchen_set,
  ];
  List<Color> colors = [
    const Color(0xffE6F2EA),
    const Color(0xFFFFE9E5),
    const Color(0xffFFF6E3),
    const Color(0xffF3EFFA),
    const Color(0xffDCF4F5),
    const Color(0xffFFE8F2),
  ];
    List<Color> iconColors = [
      Colors.green,
      Colors.red,
      Colors.yellow,
      Colors.purple,
      Colors.cyan,
      Colors.pinkAccent
    ];
    List<String> text = [
      'Vegetables',
      'Fruits',
      'Beverages',
      'Grocery',
      'Edible oil',
      'Household'
    ];


  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: icons.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color:colors[index]
                  ),
                  child: Icon(icons[index],color: iconColors[index],)
              ),
            ),
            const HeightSizeBox(value: 10),
            Text(text[index],style: AppTextStyles.paragraphMedium10,)
          ],
        );
      },),
    );
  }
}
