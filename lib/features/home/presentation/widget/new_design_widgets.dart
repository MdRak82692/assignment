import 'package:assignment/core/common/custom_text.dart';
import 'package:assignment/core/common/image_widget.dart';
import 'package:assignment/core/utils/constants/app_colors.dart';
import 'package:assignment/core/utils/constants/app_sizer.dart';
import 'package:assignment/core/utils/constants/icon_path.dart';
import 'package:flutter/material.dart';

class ComparisonTable extends StatelessWidget {
  const ComparisonTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Column(
        children: [
          // Header
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            child: Row(
              children: [
                Expanded(flex: 3, child: SizedBox()),
                Expanded(
                  flex: 3,
                  child: CustomText(
                    text: "Yesterday's Data",
                    fontSize: 12.sp,
                    color: Color(0xff082438),
                    textAlign: TextAlign.left,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: CustomText(
                    text: "Today's Data",
                    fontSize: 12.sp,
                    color: Color(0xff082438),
                    textAlign: TextAlign.left,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 1, color: Color(0XFF9AA9BC)),
          // Rows
          _buildRow('AC Max Power', '1636.50 kW', '2121.88 kW', false),
          _buildRow('Net Energy', '6439.16 kWh', '4875.77 kWh', true),
          _buildRow('Specific Yield', '1.25 kWh/kWp', '0.94 kWh/kWp', false),
          _buildRow('Net Energy', '6439.16 kWh', '4875.77 kWh', true),
          _buildRow('Specific Yield', '1.25 kWh/kWp', '0.94 kWh/kWp', false),
        ],
      ),
    );
  }

  Widget _buildRow(String title, String val1, String val2, bool isColored) {
    return Container(
      color: isColored ? Color(0xFFF0F5F9) : AppColors.white,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: CustomText(
              text: title,
              fontSize: 12.sp,
              color: Color(0xff082438),
              fontWeight: FontWeight.w400,
            ),
          ),
          Expanded(
            flex: 3,
            child: CustomText(
              text: val1,
              fontSize: 12.sp,
              color: Color(0xff082438),
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.left,
            ),
          ),
          Expanded(
            flex: 3,
            child: CustomText(
              text: val2,
              fontSize: 12.sp,
              color: Color(0xff082438),
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

class PVModuleInfo extends StatelessWidget {
  const PVModuleInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Row(
        children: [
          ImageWidget(image: IconPath.solar, width: 22.w, height: 22.h),
          SizedBox(width: 8.w),
          CustomText(
            text: 'Total Num of PV Module:  ',
            fontSize: 10.sp,
            color: Color(0xFF082438),
          ),
          Expanded(
            child: CustomText(
              text: '6372 pcs. (585 Wp each)',
              fontSize: 10.sp,
              fontWeight: FontWeight.w700,
              color: Color(0xFF082438),
              textOverflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

class InfoGrid extends StatelessWidget {
  const InfoGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: _buildCard(IconPath.ac, 'Total AC Capacity', '3000 KW'),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: _buildCard(IconPath.dc, 'Total DC Capacity', '3.727 MWp'),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        Row(
          children: [
            Expanded(
              child: _buildCard(
                IconPath.date,
                'Date of Commissioning',
                '17/07/2024',
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: _buildCard(IconPath.inverter, 'Number of Inverter', '30'),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        Row(
          children: [
            Expanded(
              child: _buildCard(IconPath.ac, 'Total AC Capacity', '3000 KW'),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: _buildCard(IconPath.dc, 'Total DC Capacity', '3.727 MWp'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCard(String icon, String title, String value) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Row(
        children: [
          ImageWidget(image: icon, width: 22.w, height: 22.h),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: title,
                  fontSize: 10.sp,
                  color: Color(0xFF082438),
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(height: 2.h),
                CustomText(
                  text: value,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF082438),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LTCard extends StatelessWidget {
  final String title;
  const LTCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(color: AppColors.containerBorder),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: title,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF082438),
                ),
                Row(
                  children: [
                    ImageWidget(
                      image: IconPath.light,
                      width: 16.w,
                      height: 16.h,
                    ),
                    SizedBox(width: 4.w),
                    CustomText(
                      text: '495.505 kWp / 440 kW',
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff0684D9),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Divider(height: 1.h, color: Color(0xffAFCCDF)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 8.h),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: _buildItem(
                        IconPath.lifetime,
                        Color(0xFFE0F7FA),
                        Colors.cyan,
                        'Lifetime Energy',
                        '352.96 MWh',
                      ),
                    ),
                    SizedBox(width: 60.w),
                    Expanded(
                      child: _buildItem(
                        IconPath.today,
                        Color(0xFFFFF8E1),
                        Colors.amber,
                        'Today Energy',
                        '273.69 kWh',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                Row(
                  children: [
                    Expanded(
                      child: _buildItem(
                        IconPath.meter,
                        Color(0xFFFFF3E0),
                        Colors.orange,
                        'Prev. Meter Energy',
                        '0.00 MWh',
                      ),
                    ),
                    SizedBox(width: 60.w),
                    Expanded(
                      child: _buildItem(
                        IconPath.live,
                        Color(0xFFEDE7F6),
                        Colors.deepPurple,
                        'Live Power',
                        '352.96 MWh',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(
    String icon,
    Color bg,
    Color iconColor,
    String title,
    String value,
  ) {
    return Row(
      children: [
        ImageWidget(image: icon, width: 26.w, height: 26.h),
        SizedBox(width: 8.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(text: title, fontSize: 8.sp, color: Color(0xFF082438)),
              SizedBox(height: 2.h),
              CustomText(
                text: value,
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xFF082438),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
