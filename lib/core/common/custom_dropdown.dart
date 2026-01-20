import 'package:assignment/core/utils/constants/app_sizer.dart';
import 'package:flutter/material.dart';

import '../utils/constants/app_colors.dart';
import 'custom_text.dart';

class CustomDropdownField extends StatelessWidget {
  final String? label;
  final String hintText;
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

  const CustomDropdownField({
    super.key,
    this.label,
    required this.hintText,
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
  });

  @override
  Widget build(BuildContext context) {
    final effectiveTextStyle =
        textStyle ??
        TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          RichText(
            text: TextSpan(
              text: label,
              style: effectiveTextStyle.copyWith(color: Colors.black87),
              children: [
                if (withAsterisk)
                  TextSpan(
                    text: ' *',
                    style: effectiveTextStyle.copyWith(color: Colors.red),
                  ),
              ],
            ),
          ),
          SizedBox(height: 6.h),
        ],
        Container(
          height: height,
          padding: padding ?? EdgeInsets.symmetric(horizontal: 16.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(color: borderColor ?? Colors.grey),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: (items.contains(selectedValue) && selectedValue.isNotEmpty)
                  ? selectedValue
                  : null,
              hint: CustomText(
                text: hintText,
                color: AppColors.textSecondary,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                textOverflow: TextOverflow.ellipsis,
              ),
              isExpanded: true,
              items: items.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: CustomText(
                    text: item,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textPrimary,
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                if (newValue != null) {
                  onChanged(newValue);
                }
              },
              style: effectiveTextStyle,
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: AppColors.textPrimary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
