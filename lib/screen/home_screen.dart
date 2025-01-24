import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/colors.dart';
import '../widgets/custom_slider.dart';
import '../widgets/hw_listview.dart';
import '../widgets/today_task_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double ht = MediaQuery.of(context).size.height;
    final double wt = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: CustomColors.appbarColor,
            title: Text(
              'Best Exercises',
              style: GoogleFonts.aBeeZee(
                textStyle: TextStyle(
                  fontSize: ht * 0.03,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            expandedHeight: ht * 0.05,
            floating: false,
            pinned: true,
          ),
          const SliverToBoxAdapter(
            child: CustomSlider(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Quick Home Workout',
                style: GoogleFonts.poppins(
                  fontSize: ht * 0.02,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade800,
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Hwlistview(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Complete Daily Task',
                style: GoogleFonts.poppins(
                  fontSize: ht * 0.02,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade800,
                ),
              ),
            ),
          ),
          const TodayTaskList(),
        ],
      ),
    );
  }
}
