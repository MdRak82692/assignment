import 'dart:math';

import 'package:assignment/core/common/custom_text.dart';
import 'package:assignment/core/common/image_widget.dart';
import 'package:assignment/core/utils/constants/app_colors.dart';
import 'package:assignment/core/utils/constants/app_sizer.dart';
import 'package:assignment/core/utils/constants/icon_path.dart';
import 'package:flutter/material.dart';

class ElectricityCard extends StatelessWidget {
  const ElectricityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.h),
        border: Border.all(color: AppColors.containerBorder),
      ),
      child: Column(
        children: [
          // Top Tabs
          Padding(
            padding: EdgeInsets.zero,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    decoration: BoxDecoration(
                      color: Color(0xFF0096FC),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.h),
                        topRight: Radius.circular(12.h),
                      ),
                    ),
                    child: Center(
                      child: CustomText(
                        text: 'Summary',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: AppColors.containerBorder,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Center(
                      child: CustomText(
                        text: 'SLD',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: AppColors.containerBorder,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Center(
                      child: CustomText(
                        text: 'Data',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          CustomText(
            text: 'Electricity',
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xFF979F99),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            child: Divider(color: AppColors.containerBorder),
          ),
          SizedBox(height: 10.h),
          // Donut Chart
          CustomPaint(
            size: Size(150.w, 150.w),
            painter: DonutChartPainter(),
            child: SizedBox(
              width: 150.w,
              height: 150.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'Total Power',
                    fontSize: 12.sp,
                    color: Color(0xFF082438),
                  ),
                  CustomText(
                    text: '5.53 kw',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF082438),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 24.h),
          // Source/Load Toggle
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30.w),
            decoration: BoxDecoration(
              color: Color(0xFFE2E6EB),
              borderRadius: BorderRadius.circular(20.h),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    decoration: BoxDecoration(
                      color: Color(0xFF0096FC),
                      borderRadius: BorderRadius.circular(20.h),
                    ),
                    child: Center(
                      child: CustomText(
                        text: 'Source',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: CustomText(
                      text: 'Load',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF75759E),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Divider(color: AppColors.containerBorder),
          ),
          // List Items
          Padding(
            padding: EdgeInsets.all(12.h),
            child: Column(
              children: [
                _buildListItem(
                  icon: IconPath.solarCell,
                  title: 'Data View',
                  isActive: true,
                  statusText: '(Active)',
                  data1: '55505.63',
                  data2: '58805.63',
                  statusColor: Colors.blue,
                ),
                SizedBox(height: 8.h),
                _buildListItem(
                  icon: IconPath.charge,
                  title: 'Data Type 2',
                  isActive: true,
                  statusText: '(Active)',
                  data1: '55505.63',
                  data2: '58805.63',
                  statusColor: Colors.orange,
                ),
                SizedBox(height: 8.h),
                _buildListItem(
                  icon: IconPath.power,
                  title: 'Data Type 3',
                  isActive: false,
                  statusText: '(Inactive)',
                  data1: '55505.63',
                  data2: '58805.63',
                  statusColor: Colors.blue, // Icon logic
                  isGradient: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListItem({
    required String icon,
    required String title,
    required bool isActive,
    required String statusText,
    required String data1,
    required String data2,
    required Color statusColor,
    bool isGradient = false,
  }) {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: isGradient ? null : Color(0xFFE2EFFC),
        gradient: isGradient
            ? LinearGradient(
                colors: [Color(0xFFE2EFFC), Color(0xFFB0C4DE)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
            : null,
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(color: Color(0xFFA6B7C9)),
      ),
      child: Row(
        children: [
          ImageWidget(image: icon, height: 32.h, width: 32.w),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 10.w,
                      height: 10.h,
                      decoration: BoxDecoration(
                        color: statusColor,
                        borderRadius: BorderRadius.circular(2.h),
                      ),
                    ),
                    SizedBox(width: 6.w),
                    CustomText(
                      text: title,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF082438),
                    ),
                    SizedBox(width: 4.w),
                    CustomText(
                      text: statusText,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: isActive ? Colors.blue : Colors.red,
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                Row(
                  children: [
                    CustomText(
                      text: 'Data 1    : ',
                      fontSize: 12.sp,
                      color: Color(0XFF5E5E5E),
                    ),
                    CustomText(
                      text: data1,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF082438),
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomText(
                      text: 'Data 2    : ',
                      fontSize: 12.sp,
                      color: Color(0XFF5E5E5E),
                    ),
                    CustomText(
                      text: data2,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF082438),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 16.sp,
            color: AppColors.textSecondary,
          ),
        ],
      ),
    );
  }
}

class DonutChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;
    final strokeWidth = 20.w;

    final paintBg = Paint()
      ..color = Color(0xFFD4E8FC)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    final paintFg = Paint()
      ..color = Color(0xFF0096FC)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = strokeWidth;

    canvas.drawCircle(center, radius - strokeWidth / 2, paintBg);

    const startAngle = -pi / 2;
    const sweepAngle = 2 * pi * 0.75; // 75% filled

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius - strokeWidth / 2),
      startAngle,
      sweepAngle,
      false,
      paintFg,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class MenuButtonsGrid extends StatelessWidget {
  const MenuButtonsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: _buildMenuBtn(IconPath.chart, 'Analysis Pro')),
            SizedBox(width: 12.w),
            Expanded(child: _buildMenuBtn(IconPath.generator, 'G. Generator')),
          ],
        ),
        SizedBox(height: 12.h),
        Row(
          children: [
            Expanded(
              child: _buildMenuBtn(IconPath.plantGeneration, 'Plant Summery'),
            ),
            SizedBox(width: 12.w),
            Expanded(child: _buildMenuBtn(IconPath.fire, 'Natural Gas')),
          ],
        ),
        SizedBox(height: 12.h),
        Row(
          children: [
            Expanded(child: _buildMenuBtn(IconPath.generator, 'D. Generator')),
            SizedBox(width: 12.w),
            Expanded(child: _buildMenuBtn(IconPath.water, 'Water Process')),
          ],
        ),
      ],
    );
  }

  Widget _buildMenuBtn(String icon, String title) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(color: Color(0xFFD1D1D1)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          ImageWidget(image: icon, height: 28.h, width: 28.w),
          SizedBox(width: 8.w),
          Expanded(
            child: CustomText(
              text: title,
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xFF5E5E5E),
            ),
          ),
        ],
      ),
    );
  }
}
