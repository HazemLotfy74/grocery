import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({
    super.key,
    required this.images, required this.carouselOptions,
  });

  final List<String> images;
  final CarouselOptions carouselOptions;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: images.length,
      itemBuilder: (context, index, realIndex) {
        return Image.asset(images[index],fit: BoxFit.cover,);
      },
      options: carouselOptions,
    );
  }
}