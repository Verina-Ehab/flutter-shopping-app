// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_sprints_microsoft_shopcraft/core/common_widgets/custom_button.dart';
// import 'package:flutter_sprints_microsoft_shopcraft/core/constants/assets_pathes.dart';
// import 'package:flutter_sprints_microsoft_shopcraft/core/constants/colors.dart';
// import 'package:flutter_sprints_microsoft_shopcraft/core/localization/app_localizations.dart';
// import 'package:lottie/lottie.dart';

// class NoInternetWidget extends StatelessWidget {
//   final VoidCallback onRetry;
//   // final String lottieAssetPath;
//   final String? title;
//   final String? message;

//   const NoInternetWidget({
//     super.key,
//     required this.onRetry,
//     // required this.lottieAssetPath,
//     this.title,
//     this.message,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(24.r),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Lottie.asset(
//             lottieNoInternet,
//             width: 200.w,
//             height: 200.h,
//             fit: BoxFit.contain,
//           ),
//           SizedBox(height: 24.h),
//           Text(
//             title ?? 'noInternetConnectionTitle'.tr(context),
//             style: Theme.of(context).textTheme.headlineSmall?.copyWith(
//                   fontWeight: FontWeight.bold,
//                 ),
//             textAlign: TextAlign.center,
//           ),
//           SizedBox(height: 8.h),
//           Text(
//             message ?? 'noInternetConnectionMessage'.tr(context),
//             style: Theme.of(context).textTheme.bodyLarge?.copyWith(
//                   color: ColorsManager.grey,
//                 ),
//             textAlign: TextAlign.center,
//           ),
//           SizedBox(height: 32.h),
//           CustomButton(
//             label: 'retry'.tr(context),
//             onPressed: onRetry,
//             buttonType: ButtonType.outlined,
//             borderColor: ColorsManager.main,
//             textColor: ColorsManager.main,
//             width: 120,
//             height: 40,
//           ),
//         ],
//       ),
//     );
//   }
// }
