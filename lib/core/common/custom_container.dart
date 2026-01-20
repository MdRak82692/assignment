import 'package:assignment/core/utils/constants/app_sizer.dart';
import 'package:flutter/material.dart';

import '../utils/constants/app_colors.dart';

class CustomContainer extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final Color? borderColor;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? bottom;

  const CustomContainer({
    super.key,
    this.child,
    this.color,
    this.borderColor,
    this.borderRadius,
    this.padding,
    this.margin,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: padding ?? EdgeInsets.all(12.h),
      margin: margin ?? EdgeInsets.only(bottom: bottom ?? 12.h),
      decoration: BoxDecoration(
        color: color ?? AppColors.textBlack,
        borderRadius: BorderRadius.circular(borderRadius ?? 10.h),
        border: Border.all(color: borderColor ?? Colors.transparent),
        boxShadow: [
          BoxShadow(
            color: AppColors.textBold.withAlpha(64),
            offset: Offset(0, 4),
            blurRadius: 30,
            spreadRadius: 0,
          ),
        ],
      ),
      child: child,
    );
  }
}
