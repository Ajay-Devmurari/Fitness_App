import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton(
      {super.key,
      required this.bgColor,
      required this.text,
      required this.textColor,
      required this.onTap});

  final Color bgColor;
  final String text;
  final Color textColor;
  final VoidCallback onTap;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    final double ht = MediaQuery.of(context).size.height;
    final double wd = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: wd * 0.40,
        height: ht * 0.08,
        decoration: BoxDecoration(
            color: widget.bgColor, borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: Text(
          widget.text,
          style: TextStyle(color: widget.textColor),
        )),
      ),
    );
  }
}
