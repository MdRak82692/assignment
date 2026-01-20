import 'package:assignment/core/common/custom_text.dart';
import 'package:assignment/core/common/image_widget.dart';
import 'package:assignment/core/utils/constants/app_colors.dart';
import 'package:assignment/core/utils/constants/app_sizer.dart';
import 'package:flutter/material.dart';

class CustomTempBox extends StatelessWidget {
  final String title;
  final String tempIcon;
  final String icon;

  const CustomTempBox({
    super.key,
    required this.title,
    required this.tempIcon,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.h),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            // Left Side - Temperature
            Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8.h)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 7.94.w,
                    right: 4.w,
                    top: 11.h,
                    bottom: 8.h,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: title,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF0096FC),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 4.h),
                                  child: CustomText(
                                    text: '°C',
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF0096FC),
                                    textAlign: TextAlign.end,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.h),
                            CustomText(
                              text: 'Module\nTemperature',
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF5E5E5E),
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 2.w),
                      ImageWidget(
                        image: tempIcon,
                        height: 72.h,
                        width: 33.w,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF536DFE), Color(0xFFB388FF)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8.h),
                    bottomRight: Radius.circular(8.h),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildInfoRow(
                            title: '26 MPH / NW',
                            subtitle: 'Wind Speed & Direction',
                          ),
                          SizedBox(height: 10.h),
                          _buildInfoRow(
                            title: '15.20 w/m²',
                            subtitle: 'Effective Irradiation',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 2.w),
                    ImageWidget(image: icon, height: 48.h, width: 57.w),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow({required String title, required String subtitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: title,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        SizedBox(height: 2.h),
        CustomText(
          text: subtitle,
          fontSize: 10.sp,
          fontWeight: FontWeight.w500,
          color: Color(0xFFDDE5FF),
        ),
      ],
    );
  }
}
