import 'package:assignment/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:assignment/core/utils/constants/app_sizer.dart';
import 'custom_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackArrow;
  final VoidCallback? onBackTap;

  const CustomAppBar({
    super.key,
    required this.title,
    this.showBackArrow = true,
    this.onBackTap,
  });

  @override
  Size get preferredSize => Size.fromHeight(56.h);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Material(
        color: Colors.white,
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          leading: showBackArrow
              ? Padding(
                  padding: EdgeInsets.only(left: 16.w, top: 12.h),
                  child: GestureDetector(
                    onTap: () {
                      if (onBackTap != null) onBackTap!();
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 24.sp,
                      color: AppColors.textSecondary,
                    ),
                  ),
                )
              : null,
          title: Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: CustomText(
              text: title,
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              textOverflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}
