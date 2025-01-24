import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/custom_list3.dart';

class TodayTaskList extends StatefulWidget {
  const TodayTaskList({
    super.key,
  });

  @override
  State<TodayTaskList> createState() => _TodayTaskListState();
}

final List<TodayTaskImageList> todayTaskImageListData = [
  TodayTaskImageList(
      taskImg: 'assets/task_image1.png', text: '20 Min Yoga', progress: 0.1),
  TodayTaskImageList(
      taskImg: 'assets/task_image2.png',
      text: '10 Min Stretches',
      progress: 0.2),
  TodayTaskImageList(
      taskImg: 'assets/task_image3.png', text: '1 Hour for Arm', progress: 0.3),
  TodayTaskImageList(
      taskImg: 'assets/task_image4.png',
      text: '50 Min for Legs',
      progress: 0.4),
  TodayTaskImageList(
      taskImg: 'assets/task_image5.png',
      text: '20 Min make Abs',
      progress: 0.5),
];

class _TodayTaskListState extends State<TodayTaskList> {
  @override
  Widget build(BuildContext context) {
    final double ht = MediaQuery.of(context).size.height;
    final double wt = MediaQuery.of(context).size.width;

    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: todayTaskImageListData.length,
      (context, index) {
        final item = todayTaskImageListData[index];
        return SizedBox(
          height: ht * 0.2,
          child: Container(
            margin: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 8,
                  spreadRadius: 2,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: ht / 10,
                  width: wt * 0.25,
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
                        blurRadius: 6,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      item.taskImg,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: wt * 0.06),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item.text,
                        style: GoogleFonts.poppins(
                          fontSize: ht * 0.02,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: wt * 0.05),
                CircularPercentIndicator(
                  animation: true,
                  radius: 40.0,
                  lineWidth: 8.0,
                  animationDuration: 1000,
                  percent: 0.4,
                  center: Text(
                    '${(item.progress * 100).toInt()}%',
                    style: GoogleFonts.poppins(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade600,
                    ),
                  ),
                  progressColor: Colors.blue,
                  backgroundColor: Colors.grey.shade200,
                ),
              ],
            ),
          ),
        );
      },
    ));
  }
}
