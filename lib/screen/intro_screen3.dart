import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../widgets/custom_button.dart';
import '../widgets/navigationbar.dart';

class IntroScreen3 extends StatelessWidget {
  const IntroScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    final double ht = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: ht * 0.5,
          width: double.infinity,
          child: Image.asset(
            'assets/intro_image3.png',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: ht * 0.06,
        ),
        Text(
          'Rise to Your Best.',
          style: TextStyle(fontSize: ht * 0.03, fontWeight: FontWeight.w900),
        ),
        SizedBox(
          height: ht * 0.02,
        ),
        Text(
          'A Smarter Way to Achieve Your Dream Body.',
          style: TextStyle(
            fontSize: ht * 0.02,
          ),
        ),
        const Spacer(),
        CustomButton(
          bgColor: CustomColors.customButtonBgColor,
          text: 'Explore Now',
          textColor: CustomColors.customButtonFontColor,
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CustomNav(),
              )),
        ),
        SizedBox(
          height: ht * 0.02,
        ),
      ],
    ));
  }
}
