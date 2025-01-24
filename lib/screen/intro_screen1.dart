import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../widgets/custom_button.dart';
import 'intro_screen2.dart';

class IntroScreen1 extends StatelessWidget {
  const IntroScreen1({super.key});
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
            'assets/intro_image1.png',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: ht * 0.06,
        ),
        Text(
          'Track your Active Lifestyle.',
          style: TextStyle(fontSize: ht * 0.03, fontWeight: FontWeight.w900),
        ),
        SizedBox(
          height: ht * 0.02,
        ),
        Text(
          'Find your way to the perfect body.',
          style: TextStyle(
            fontSize: ht * 0.02,
          ),
        ),
        const Spacer(),
        CustomButton(
          bgColor: CustomColors.customButtonBgColor,
          text: 'Get Started',
          textColor: CustomColors.customButtonFontColor,
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const IntroScreen2(),
              )),
        ),
        SizedBox(
          height: ht * 0.02,
        ),
      ],
    ));
  }
}
