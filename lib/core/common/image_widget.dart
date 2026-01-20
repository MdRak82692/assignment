import 'package:flutter/material.dart';
import 'package:assignment/core/utils/constants/app_sizer.dart';

class ImageWidget extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final Color? color;
  final double? borderRadius;
  const ImageWidget({
    super.key,
    required this.image,
    this.height,
    this.width,
    this.fit,
    this.color,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 160.h,
      width: width ?? 160.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 0.h),
        image: DecorationImage(
          image: AssetImage(image),
          fit: fit ?? BoxFit.contain,
          colorFilter: color != null
              ? ColorFilter.mode(color!, BlendMode.srcIn)
              : null,
        ),
      ),
    );
  }
}
