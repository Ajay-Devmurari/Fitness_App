import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import '../model/custom_list4.dart';
import '../utils/colors.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    final double ht = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: ht * 0.05,
            floating: false,
            pinned: true,
            backgroundColor: CustomColors.appbarColor,
            title: Text(
              textAlign: TextAlign.center,
              'Popular Workouts',
              style: GoogleFonts.aBeeZee(
                textStyle:
                    TextStyle(fontSize: ht * 0.03, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: buildActivity(),
          ),
        ],
      ),
    );
  }

  Widget buildActivity() {
    final double ht = MediaQuery.of(context).size.height;
    final List<GridviewImage> gridViewImageListData = [
      GridviewImage(img: 'assets/gv_image1.png'),
      GridviewImage(img: 'assets/gv_image2.png'),
      GridviewImage(img: 'assets/gv_image3.png'),
      GridviewImage(img: 'assets/gv_image4.png'),
      GridviewImage(img: 'assets/gv_image5.png'),
      GridviewImage(img: 'assets/gv_image6.png'),
      GridviewImage(img: 'assets/gv_image7.png'),
      GridviewImage(img: 'assets/gv_image8.png'),
      GridviewImage(img: 'assets/gv_image9.png'),
      GridviewImage(img: 'assets/gv_image10.png'),
    ];
    return Container(
        height: ht * 1,
        child: MasonryGridView.count(
            padding: EdgeInsets.symmetric(horizontal: 4),
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            itemCount: gridViewImageListData.length,
            itemBuilder: (context, index) {
              final item = gridViewImageListData[index];
              return Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                        colors: [Colors.blue.shade700, Colors.blue.shade600],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.2),
                          blurRadius: 7,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        item.img,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 10,
                    right: 8,
                    child: Icon(
                      color: CustomColors.iconColor,
                      Icons.play_circle_outline_rounded,
                      size: 32,
                    ),
                  )
                ],
              );
            }));
  }
}
