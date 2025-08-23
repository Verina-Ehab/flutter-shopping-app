import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/constants/colors.dart';

class CustomAuthLayout extends StatelessWidget {
  final Widget? widget;
  final bool? gradiantColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  const CustomAuthLayout({
    super.key,
    this.widget,
    this.gradiantColor,
    this.horizontalPadding,
    this.verticalPadding,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: (gradiantColor ?? false)
              ? const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      ColorsManager.topGradient,
                      ColorsManager.bottomGradient,
                    ],
                  ),
                )
              : null,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding?.h ?? 18.h,
              vertical: verticalPadding?.w ?? 18.w,
            ),
            child: widget,
          ),
        ),
      ),
    );
  }
}
