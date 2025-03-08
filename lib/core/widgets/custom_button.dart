import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

import 'package:toda_app/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.color,
      this.onTap,
      required this.width, this.icon});
  final String text;
  final Color color;
  final double width;
  final IconData? icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: width,
          height: 48.h,
          decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xff8875FF),
              ),
              borderRadius: BorderRadius.circular(2),
              color: color),
          child: Center(
            child: Row(
              spacing: 10,
              mainAxisAlignment:MainAxisAlignment.center ,
              children: [
                Icon(icon),
                Text(
                  text,
                  style: Styles.textStyle16.copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ));
  }
}
