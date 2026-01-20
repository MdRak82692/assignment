import 'package:assignment/core/utils/constants/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
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
    this.minLine,
    this.inputFormatters,
    this.onTap,
  });

  final TextEditingController controller;
  final Color? borderColor;
  final String hintText;
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

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      onChanged: onChanged,
      maxLines: maxLine,
      minLines: minLine,
      readOnly: readOnly,
      enabled: enabled,
      keyboardType: keyboardType,
      obscureText: obscureText,
      controller: controller,
      inputFormatters: inputFormatters,
      style:
          style ??
          GoogleFonts.poppins(
            color: AppColors.textPrimary,
            fontSize: 14.sp,
            height: 20.h / 14.h,
          ),
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: isPasswordField
            ? GestureDetector(
                onTap: togglePasswordVisibility,
                child: Icon(
                  isPasswordVisible ?? false
                      ? Icons.visibility_off
                      : Icons.visibility,
                  color: AppColors.textSecondary,
                ),
              )
            : suffix,
        hintStyle:
            hintStyle ??
            GoogleFonts.poppins(
              color: AppColors.textSecondary,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              height: 20.h / 14.h,
            ),
        errorStyle: GoogleFonts.poppins(
          color: AppColors.error,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          height: 20.h / 14.h,
        ),
        fillColor: fillColor ?? Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor ?? Color(0xffBEBEBE),
            width: 1.w,
          ),
          borderRadius: BorderRadius.circular(radius),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor ?? AppColors.primary,
            width: 1.w,
          ),
          borderRadius: BorderRadius.circular(radius),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 12.w),
      ),
      validator: validator,
    );
  }
}
