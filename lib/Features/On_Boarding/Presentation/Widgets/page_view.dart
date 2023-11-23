
import 'package:flutter/material.dart';
import 'package:grocery_app/Features/On_Boarding/Presentation/Widgets/page_view_items.dart';

import '../../../../Core/Utils/app_image.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, required this.pageController});

  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        PageViewItems(
          image: AppImages.onBoard3,
          title: 'Buy Grocery',
          subTitle: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy',
        ),
        PageViewItems(
          image: AppImages.onBoard2,
          title: 'Fast Delivery',
          subTitle: 'Get your order by speed delivery',
        ),
        PageViewItems(
          image: AppImages.onBoard1,
          title: 'Enjoy Quality Food',
          subTitle: 'Order is arrived at your Place',
        ),
      ],
    );
  }
}
