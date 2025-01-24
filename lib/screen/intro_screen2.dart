import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../widgets/custom_button.dart';
import 'intro_screen3.dart';

class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({super.key});
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
            'assets/intro_image2.png',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: ht * 0.06,
        ),
        Text(
          'Move. Train. Transform.',
          style: TextStyle(fontSize: ht * 0.03, fontWeight: FontWeight.w900),
        ),
        SizedBox(
          height: ht * 0.02,
        ),
        Text(
          'Achieve More, Feel Better, Live Stronger',
          style: TextStyle(
            fontSize: ht * 0.02,
          ),
        ),
        const Spacer(),
        CustomButton(
          bgColor: CustomColors.customButtonBgColor,
          text: 'Next',
          textColor: CustomColors.customButtonFontColor,
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const IntroScreen3(),
              )),
        ),
        SizedBox(
          height: ht * 0.02,
        ),
      ],
    ));
  }
}
