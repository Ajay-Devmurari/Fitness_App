import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/custom_list.dart';
import '../utils/colors.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

final List<SliderImage> sliderImageList = [
  SliderImage(
      img: 'assets/slider_image1.png', text: 'Plank hard, stay strong.'),
  SliderImage(
      img: 'assets/slider_image2.png', text: 'Strong shoulders carry dreams.'),
  SliderImage(
      img: 'assets/slider_image3.png',
      text: 'Strong chest, strong confidence.'),
  SliderImage(img: 'assets/slider_image4.png', text: 'Build a powerful back.'),
];

class _CustomSliderState extends State<CustomSlider> {
  @override
  Widget build(BuildContext context) {
    final double ht = MediaQuery.of(context).size.height;
    return SizedBox(
      height: ht * 0.3,
      child: Swiper(
        axisDirection: AxisDirection.right,
        itemBuilder: (BuildContext context, int index) {
          final item = sliderImageList[index];
          return Stack(children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    scale: ht * 0.2,
                    image: AssetImage(item.img),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(14),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 4),
            ),
            Positioned(
              bottom: 4,
              left: 12,
              child: Text(
                item.text,
                style: GoogleFonts.aBeeZee(
                    color: CustomColors.sliderTextColor,
                    fontSize: ht * 0.02,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ]);
        },
        itemCount: sliderImageList.length,
        autoplay: true,
        autoplayDelay: 3000,
        duration: 2000,
        viewportFraction: 1,
        itemWidth: double.infinity,
        loop: true,
        curve: Curves.linear,
        physics: const BouncingScrollPhysics(),
        pagination: const SwiperPagination(
          alignment: Alignment.bottomRight,
          margin: EdgeInsets.all(10.0),
          builder: DotSwiperPaginationBuilder(
            color: CustomColors.bgColor,
            activeColor: CustomColors.activeColor,
            size: 8.0,
            activeSize: 12.0,
          ),
        ),
      ),
    );
  }
}
