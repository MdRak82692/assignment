import 'package:assignment/core/common/custom_button.dart';
import 'package:assignment/core/common/custom_text.dart';
import 'package:assignment/core/common/custom_text_field.dart';
import 'package:assignment/core/common/image_widget.dart';
import 'package:assignment/core/utils/constants/app_colors.dart';
import 'package:assignment/core/utils/constants/app_sizer.dart';
import 'package:assignment/core/utils/constants/logo_path.dart';
import 'package:assignment/features/auth/controller/login_controller.dart';
import 'package:assignment/features/home/presentation/screen/home_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.put(LoginController());

    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Obx(
        () => Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  SizedBox(height: 40.h),
                  ImageWidget(
                    image: LogoPath.logo,
                    height: 176.h,
                    width: 278.w,
                  ),
                  SizedBox(height: 24.h),
                  CustomText(
                    text: 'SCUBE',
                    textAlign: TextAlign.center,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textWhite,
                  ),
                  CustomText(
                    text: 'Control & Monitoring System',
                    textAlign: TextAlign.center,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textWhite,
                  ),
                ],
              ),
            ),

            AnimatedPositioned(
              duration: Duration(milliseconds: 1000),
              curve: Curves.easeOut,
              bottom: controller.showLogin.value ? 0 : -600.h,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: 500.h,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.w),
                    topRight: Radius.circular(30.w),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 32.h),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: CustomText(
                          text: 'Login',
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      SizedBox(height: 24.h),
                      CustomTextField(
                        controller: controller.usernameController,
                        hintText: 'Username',
                        fillColor: AppColors.white,
                        borderColor: AppColors.containerBorder,
                      ),
                      SizedBox(height: 12.h),
                      Obx(
                        () => CustomTextField(
                          hintText: 'Password',
                          controller: controller.passwordController,
                          obscureText: controller.isPasswordVisible.value,
                          isPasswordField: true,
                          isPasswordVisible:
                              !controller.isPasswordVisible.value,
                          togglePasswordVisibility:
                              controller.togglePasswordVisibility,
                          fillColor: AppColors.white,
                          borderColor: AppColors.containerBorder,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {},
                          child: CustomText(
                            text: 'Forget password?',
                            color: AppColors.textSecondary,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.textSecondary,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      CustomButton(
                        onTap: () {
                          Get.to(() => HomeScreen());
                        },
                        title: 'Login',
                        buttonColor: AppColors.primaryBackground,
                        buttonTextColor: AppColors.white,
                        borderColor: AppColors.primaryBackground,
                        isIcon: true,
                      ),
                      SizedBox(height: 20.h),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: "Don't have any account? ",
                            style: GoogleFonts.inter(
                              color: AppColors.textSecondary,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            children: [
                              TextSpan(
                                text: 'Register Now',
                                style: GoogleFonts.inter(
                                  color: AppColors.primaryBackground,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {},
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
