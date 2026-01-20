import 'package:assignment/core/utils/constants/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants/app_colors.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final int? maxLines;
  final double? decorationThickness;
  final TextOverflow? textOverflow;
  final TextDecoration? decoration;
  final Color? decorationColor;
  final double? height;
  final double? letterSpacing;

  const CustomText({
    super.key,
    required this.text,
    this.textAlign,
    this.decorationThickness,
    this.maxLines,
    this.textOverflow,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.decoration,
    this.decorationColor,
    this.height,
    this.letterSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.inter(
        decoration: decoration,
        decorationThickness: decorationThickness,
        decorationColor: decorationColor ?? const Color(0xff2972FF),
        fontSize: fontSize ?? 16.sp,
        color: color ?? AppColors.textPrimary,
        fontWeight: fontWeight ?? FontWeight.w600,
        height: height,
        letterSpacing: letterSpacing,
      ),
      overflow: textOverflow,
      maxLines: maxLines,
    );
  }
}
