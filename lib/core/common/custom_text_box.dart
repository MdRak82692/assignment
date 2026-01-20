import 'package:assignment/core/utils/constants/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utils/constants/app_colors.dart';
import 'custom_text.dart';
import 'custom_text_field.dart';

class CustomTextBox extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final Color? borderColor;
  final Function(String)? onChange;
  final bool obscureText;
  final dynamic fillColor;
  final Widget? suffix;
  final int? minLine;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final bool readOnly;
  final bool enabled;
  final int? maxLine;
  final double radius;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final bool isPasswordField;
  final VoidCallback? togglePasswordVisibility;
  final bool? isPasswordVisible;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final VoidCallback? onTap;

  const CustomTextBox({
    super.key,
    required this.title,
    required this.controller,
    this.obscureText = false,
    this.suffix,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.readOnly = false,
    this.enabled = true,
    this.prefixIcon,
    this.fillColor,
    this.maxLine = 1,
    this.radius = 8,
    this.hintStyle,
    this.style,
    this.isPasswordField = false,
    this.togglePasswordVisibility,
    this.isPasswordVisible,
    this.onChanged,
    this.borderColor,
    this.onChange,
    this.minLine,
    this.inputFormatters,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: title, fontSize: 16.sp, fontWeight: FontWeight.w400),
        SizedBox(height: 10.h),
        CustomTextField(
          controller: controller,
          hintText: readOnly == true ? 'Select $title' : "Enter $title",
          onTap: onTap,
          onChanged: onChanged,
          maxLine: maxLine,
          minLine: minLine,
          readOnly: readOnly,
          enabled: enabled,
          keyboardType: keyboardType,
          obscureText: obscureText,
          inputFormatters: inputFormatters,
          prefixIcon: prefixIcon,
          suffix: isPasswordField
              ? IconButton(
                  icon: Icon(
                    isPasswordVisible ?? false
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: AppColors.textSecondary,
                  ),
                  onPressed: togglePasswordVisibility,
                )
              : suffix,
          hintStyle: hintStyle,
          fillColor: fillColor,
          borderColor: borderColor,
          validator: validator,
        ),
      ],
    );
  }
}
