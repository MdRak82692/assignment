import 'package:assignment/core/utils/constants/app_sizer.dart';
import 'package:flutter/material.dart';
import '../utils/constants/app_colors.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    this.buttonColor = AppColors.primary,
    this.buttonTextColor = AppColors.primary,
    required this.title,
    this.borderColor,
    this.isIcon = true,
    this.iconColor = AppColors.primary,
    this.radius,
    this.height,
    this.vertical,
    this.fontSize,
  });

  final VoidCallback onTap;
  final dynamic buttonColor, borderColor, iconColor;
  final Color buttonTextColor;
  final double? radius, height, fontSize;
  final String title;
  final bool isIcon;
  final double? vertical;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        padding: EdgeInsets.symmetric(vertical: vertical ?? 15.h),
        decoration: BoxDecoration(
          gradient: buttonColor is Gradient ? buttonColor : null,
          // Use gradient if provided
          color: buttonColor is Color ? buttonColor : AppColors.primary,
          // Default color if no gradient is passed
          borderRadius: BorderRadius.circular(radius ?? 12.h),
          border: Border.all(
            width: 1.w,
            color: borderColor ?? AppColors.primary,
          ),
        ),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: title,
                color: buttonTextColor,
                fontWeight: FontWeight.w600,
                fontSize:fontSize?? 16.sp,
                height: 22.h / 16.h,
                letterSpacing: -0.6.h,
              ),
              if (isIcon == false) ...[
                SizedBox(width: 12.w),
                Icon(Icons.arrow_forward, size: 20.sp, color: iconColor),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
