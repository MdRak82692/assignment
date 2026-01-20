import 'package:assignment/core/common/custom_button.dart';
import 'package:assignment/core/utils/constants/app_colors.dart';
import 'package:assignment/core/utils/constants/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/constants/icon_path.dart';
import '../../controller/home_controller.dart';
import 'custom_box.dart';

class HomeIndexOne extends StatelessWidget {
  HomeIndexOne({super.key});

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.h),
      child: Column(
        children: [
          CustomButton(
            onTap: () {
              controller.selectedIndex.value = 1;
            },
            buttonColor: Color(0XFF00C0E8),
            buttonTextColor: AppColors.white,
            borderColor: Color(0XFF00C0E8),
            isIcon: false,
            title: '2nd Page Navigate',
          ),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomBox(
                title: 'Live AC Power',
                subtitle: '10000 kW',
                icon: IconPath.liveACPower,
              ),
              CustomBox(
                title: 'Plant Generation',
                subtitle: '82.58 %',
                icon: IconPath.plantGeneration,
              ),
              CustomBox(
                title: 'Live PR',
                subtitle: '85.61 %',
                icon: IconPath.livePR,
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomBox(
                title: 'Cumulative PR',
                subtitle: '27.58 %',
                icon: IconPath.cumulativePR,
              ),
              CustomBox(
                title: 'Return PV',
                smallTitle: '(Till Today)',
                subtitle: '10000 ৳',
                icon: IconPath.returnPV,
              ),
              CustomBox(
                title: 'Total Energy',
                subtitle: '10000 kWh',
                icon: IconPath.totalEnergy,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
