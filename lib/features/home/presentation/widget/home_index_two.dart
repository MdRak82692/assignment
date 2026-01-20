import 'package:assignment/core/utils/constants/app_colors.dart';
import 'package:assignment/core/utils/constants/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/common/custom_button.dart';
import '../../controller/home_controller.dart';

class HomeIndexTwo extends StatelessWidget {
  HomeIndexTwo({super.key});

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.h),
      child: Column(
        children: [
          CustomButton(
            onTap: () {
              controller.selectedIndex.value = 0;
            },
            buttonColor: Color(0XFF00C0E8),
            buttonTextColor: AppColors.white,
            borderColor: Color(0XFF00C0E8),
            isIcon: false,
            title: '1st Page Navigate',
          ),
        ],
      ),
    );
  }
}
