import 'package:assignment/core/common/custom_text.dart';
import 'package:assignment/core/common/image_widget.dart';
import 'package:assignment/core/utils/constants/app_colors.dart';
import 'package:assignment/core/utils/constants/app_sizer.dart';
import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  final String title;
  final String subtitle;
  final String icon;
  final String? smallTitle;

  const CustomBox({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.smallTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115.w,
      // height: 37.h,
      padding: EdgeInsets.only(left: 4.w, top: 4.h, bottom: 5.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(4.h),
      ),
      child: Row(
        children: [
          ImageWidget(image: icon, height: 22.h, width: 22.w),
          SizedBox(width: 4.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: subtitle,
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xFF082438),
              ),
              SizedBox(height: 2.h),
              Row(
                children: [
                  CustomText(
                    text: title,
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0XFF5E5E5E),
                  ),
                  if (smallTitle != null)
                    CustomText(
                      text: smallTitle!,
                      fontSize: 5.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF5E5E5E),
                    ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
