import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselSliderItem extends StatelessWidget {
  const CarouselSliderItem({super.key});

  @override
  Widget build(BuildContext context) {
    List<Image> items = [
      Image.asset('assets/images/1.jpg'),
      Image.asset('assets/images/2.jpg'),
    ];
    return CarouselSlider(
        items: items,
        options: CarouselOptions(
          height: 200.h,
          aspectRatio: 16 / 9,
          viewportFraction: 0.7,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ));
  }
}
