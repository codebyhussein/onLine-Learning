import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rokna/core/app_style.dart';
import 'package:rokna/features/onborading/data/onboarding_model.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({super.key, required this.page});
  final OnBoardingModel page;
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          page.image,
          height: 250.h, // Adjust the height as needed
        ),
        SizedBox(height: 20.h),
        Text(
          page.title,
          style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            page.description,
            textAlign: TextAlign.center,
            style: AppStyle.style15Semibold,
          ),
        ),
      ],
    );
  }
}