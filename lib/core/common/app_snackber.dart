import 'package:assignment/core/utils/constants/app_sizer.dart';
import 'package:flutter/material.dart';
import '../utils/constants/app_colors.dart';
import 'custom_text.dart';

class AppSnackBar {
  static void showError(BuildContext context, String message, {String? title}) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    scaffoldMessenger.showSnackBar(
      SnackBar(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: title ?? 'Error',
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
            SizedBox(height: 4.h),
            CustomText(
              text: message,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ],
        ),
        backgroundColor: AppColors.error,
        duration: Duration(seconds: 4),
        margin: EdgeInsets.all(12.h),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        action: SnackBarAction(
          label: 'Dismiss',
          textColor: Colors.white,
          onPressed: () {
            scaffoldMessenger.hideCurrentSnackBar();
          },
        ),
      ),
    );
  }

  static void showSuccess(
    BuildContext context,
    String message, {
    String? title,
  }) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    scaffoldMessenger.showSnackBar(
      SnackBar(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: title ?? 'Success',
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
            SizedBox(height: 4.h),
            CustomText(
              text: message,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ],
        ),
        backgroundColor: AppColors.success,
        duration: Duration(seconds: 3),
        margin: EdgeInsets.all(12.h),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        action: SnackBarAction(
          label: 'Dismiss',
          textColor: Colors.white,
          onPressed: () {
            scaffoldMessenger.hideCurrentSnackBar();
          },
        ),
      ),
    );
  }
}
