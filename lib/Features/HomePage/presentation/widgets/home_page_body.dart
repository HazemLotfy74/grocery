import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/Core/Utils/app_color.dart';
import 'package:grocery_app/Core/Utils/app_image.dart';
import 'package:grocery_app/Core/widgets/custom_size_box.dart';
import 'package:grocery_app/Core/widgets/custom_textform_field.dart';
import 'package:grocery_app/Features/HomePage/presentation/widgets/category_items.dart';
import 'package:grocery_app/Features/HomePage/presentation/widgets/custom_card_items.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'custom_carousel_slider.dart';
import 'custom_row.dart';
import 'custom_smooth_indicator.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  List<String> images = [
    AppImages.homePageView,
    AppImages.homePageView,
    AppImages.homePageView,
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  CustomTextField(
                    hintText: 'Search keywords..',
                    prefixIcon: Icons.search,
                    fillColor: AppColors.background2,
                    widget: Image.asset('assets/images/Group 242suffix.png'),
                  ),
                  const HeightSizeBox(value: 10),
                  Stack(
                    children: [
                      CarouselWidget(
                        images: images,
                        carouselOptions: CarouselOptions(
                          viewportFraction: 1,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          height: 270,
                          onPageChanged: (index, reason) {
                            setState(() {
                              activeIndex = index;
                            });
                          },
                        ),
                      ),
                      CustomSmoothIndicator(
                          activeIndex: activeIndex, images: images)
                    ],
                  ),
                  const HeightSizeBox(value: 20),
                  const CustomRow(text: 'Categories'),
                  const HeightSizeBox(value: 15),
                  CategoryItems(),
                  const CustomRow(text: 'Featured Products'),
                  const HeightSizeBox(value: 10)
                ],
              ),
            ),
            SliverFillRemaining(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2.9 / 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 15),
                itemBuilder: (context, index) {
                  return const CustomCardItems();
                },
                itemCount: 6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
