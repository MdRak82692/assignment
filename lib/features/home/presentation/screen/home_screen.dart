import 'package:assignment/core/common/custom_app_bar.dart';
import 'package:assignment/core/utils/constants/app_sizer.dart';
import 'package:assignment/features/home/controller/home_controller.dart';
import 'package:assignment/features/home/presentation/widget/home_index_one.dart';
import 'package:assignment/features/home/presentation/widget/home_index_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD5E0EC),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.h),
        child: Obx(
          () => CustomAppBar(
            title: controller.selectedIndex.value == 0
                ? '1st Page'
                : '2nd Page',
          ),
        ),
      ),
      body: Obx(() {
        switch (controller.selectedIndex.value) {
          case 0:
            return HomeIndexOne();
          case 1:
            return HomeIndexTwo();
          default:
            return HomeIndexOne();
        }
      }),
    );
  }
}
