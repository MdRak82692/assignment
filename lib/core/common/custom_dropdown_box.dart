import 'package:assignment/core/utils/constants/app_sizer.dart';
import 'package:flutter/material.dart';
import '../utils/constants/app_colors.dart';
import 'custom_dropdown.dart';
import 'custom_text.dart';

class CustomDropdownBox extends StatelessWidget {
  final String title;
  final String? label;
  final bool withAsterisk;
  final List<String> items;
  final String selectedValue;
  final Color? borderColor;
  final ValueChanged<String> onChanged;
  final TextStyle? textStyle;
  final double height;
  final double borderRadius;
  final double fontSize;
  final EdgeInsetsGeometry? padding;
  final IconData? icon;
  final Color? iconColor;
  final double? iconSize;
  final VoidCallback? onIconTap;

  const CustomDropdownBox({
    super.key,
    this.label,
    this.withAsterisk = false,
    required this.items,
    required this.selectedValue,
    this.borderColor = const Color(0xffB8B8B8),
    required this.onChanged,
    this.textStyle,
    this.height = 48,
    this.borderRadius = 6,
    this.fontSize = 14,
    this.padding,
    required this.title,
    this.icon,
    this.iconColor,
    this.iconSize,
    this.onIconTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: title,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),

            if (icon != null) ...[
              GestureDetector(
                onTap: onIconTap,
                child: Icon(
                  icon,
                  color: iconColor ?? AppColors.success,
                  size: iconSize ?? 24.sp,
                ),
              ),
            ],
          ],
        ),
        SizedBox(height: 10.h),
        CustomDropdownField(
          label: label,
          hintText: "Select $title",
          withAsterisk: withAsterisk,
          items: items,
          selectedValue: selectedValue,
          borderColor: borderColor,
          onChanged: onChanged,
          textStyle: textStyle,
          height: height,
          borderRadius: borderRadius,
          fontSize: fontSize,
          padding: padding,
        ),
      ],
    );
  }
}
