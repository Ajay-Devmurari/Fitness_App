import 'package:fit_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/custom_list2.dart';

class Hwlistview extends StatefulWidget {
  const Hwlistview({
    super.key,
  });

  @override
  State<Hwlistview> createState() => _HwlistviewState();
}

final List<HomeWorkoutListview> hwImageListData = [
  HomeWorkoutListview(
      hwImages: 'assets/hw_image1.png', text: '10 Min\nworkout'),
  HomeWorkoutListview(
      hwImages: 'assets/hw_image2.png', text: '18 Min\njust consistent'),
  HomeWorkoutListview(
      hwImages: 'assets/hw_image3.png', text: '20 Min\nBreath in-out'),
  HomeWorkoutListview(
      hwImages: 'assets/hw_image4.png', text: '18 Min Refresh\nyour mind'),
  HomeWorkoutListview(
      hwImages: 'assets/hw_image5.png', text: '12 Min\nRelaxation,'),
];

class _HwlistviewState extends State<Hwlistview> {
  @override
  Widget build(BuildContext context) {
    final double ht = MediaQuery.of(context).size.height;
    final double wt = MediaQuery.of(context).size.width;
    return Container(
      height: ht * 0.3,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: hwImageListData.length,
        itemBuilder: (context, index) {
          final item = hwImageListData[index];
          return Stack(children: [
            Container(
              height: ht * 0.5,
              width: wt * 0.4,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  item.hwImages,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 4,
              left: 12,
              child: Text(
                item.text,
                style: GoogleFonts.aBeeZee(
                    color: CustomColors.hwTextColor,
                    fontSize: ht * 0.02,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ]);
        },
      ),
    );
  }
}
