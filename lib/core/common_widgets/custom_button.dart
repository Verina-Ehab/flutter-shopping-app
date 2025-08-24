// Path: lib/core/widgets/custom_button.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/localization/app_localizations.dart';

import '../constants/colors.dart';
import '../constants/sizes.dart';
import 'loader.dart';

enum ButtonType { primary, outlined, text }

class CustomButton extends StatelessWidget {
  final String? label;
  final Widget? widget;
  final VoidCallback? onPressed;
  final bool isLoading;
  final ButtonType buttonType;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final Color? loadingIndicatorColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final EdgeInsets? padding;
  final double? borderRadius;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final bool isDisabled;
  final double? loaderSize;

  const CustomButton({
    super.key,
    this.label,
    this.onPressed,
    this.isLoading = false,
    this.buttonType = ButtonType.primary,
    this.height = 42,
    this.width,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
    this.loadingIndicatorColor,
    this.fontSize,
    this.fontWeight,
    this.padding,
    this.borderRadius,
    // = 8.0,
    this.leadingIcon,
    this.trailingIcon,
    this.isDisabled = false,
    this.widget,
    this.loaderSize,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    const Color primaryColor = ColorsManager.main;
    const Color onPrimaryColor = ColorsManager.bckg;
    const Color outlineColor = ColorsManager.grey;
    final Color disabledBackgroundColor = theme.disabledColor.withValues(
      alpha: 0.12,
    );
    final Color disabledForegroundColor = theme.disabledColor.withValues(
      alpha: 0.38,
    );

    // Determine effective colors and styles based on type and state
    // Color effectiveBackgroundColor;
    // Color effectiveForegroundColor;
    // BorderSide? side;

    final bool trulyDisabled =
        isDisabled || isLoading; // Button is unusable if disabled OR loading

    final baseTextStyle = TextStyle(
      fontSize: (fontSize ?? 14).sp,
      fontWeight: fontWeight ?? FontWeight.w600,
    );

    Widget buttonChild = isLoading
        ? Loader(
            size: loaderSize != null ? loaderSize!.h : (height ?? 48).h * 0.5,
            color:
                loadingIndicatorColor ??
                (buttonType == ButtonType.primary
                        ? (textColor ?? onPrimaryColor)
                        : (textColor ?? primaryColor))
                    .withValues(alpha: trulyDisabled ? 0.38 : 1.0),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (leadingIcon != null) ...[
                IconTheme(
                  data: IconThemeData(
                    color: trulyDisabled
                        ? disabledForegroundColor
                        : (buttonType == ButtonType.primary
                              ? (textColor ?? onPrimaryColor)
                              : (textColor ?? primaryColor)),
                    size: (fontSize ?? 14).sp * 1.2,
                  ),
                  child: leadingIcon!,
                ),
                SizedBox(width: 8.w),
              ],
              Flexible(
                child: (label != null)
                    ? Text(label!.tr(context), overflow: TextOverflow.ellipsis)
                    : (widget != null)
                    ? widget!
                    : const SizedBox.shrink(),
              ),
              if (trailingIcon != null) ...[
                SizedBox(width: 8.w),
                IconTheme(
                  data: IconThemeData(
                    color: trulyDisabled
                        ? disabledForegroundColor
                        : (buttonType == ButtonType.primary
                              ? (textColor ?? onPrimaryColor)
                              : (textColor ?? primaryColor)),
                    size: (fontSize ?? 14).sp * 1.2,
                  ),
                  child: trailingIcon!,
                ),
              ],
            ],
          );

    // Return specific button type based on enum
    switch (buttonType) {
      case ButtonType.primary:
        return SizedBox(
          width: width?.w,
          height: height?.h,
          child: ElevatedButton(
            onPressed: trulyDisabled ? null : onPressed,
            style:
                ElevatedButton.styleFrom(
                  backgroundColor: trulyDisabled
                      ? disabledBackgroundColor
                      : backgroundColor ?? primaryColor,
                  foregroundColor: trulyDisabled
                      ? disabledForegroundColor
                      : textColor ?? onPrimaryColor,
                  elevation: trulyDisabled ? 0 : 2,
                  padding: padding ?? EdgeInsets.symmetric(horizontal: 16.w),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      borderRadius?.r ?? appSharedRadius,
                    ),
                  ),
                  textStyle: baseTextStyle,
                  minimumSize: Size(0, (height ?? 48).h),
                ).copyWith(
                  overlayColor: WidgetStateProperty.resolveWith<Color?>((
                    Set<WidgetState> states,
                  ) {
                    if (states.contains(WidgetState.pressed) &&
                        !trulyDisabled) {
                      return (textColor ?? onPrimaryColor).withValues(
                        alpha: 0.12,
                      );
                    }
                    return null; // Defer to the default
                  }),
                ),
            child: buttonChild,
          ),
        );

      case ButtonType.outlined:
        return SizedBox(
          width: width?.w,
          height: height?.h,
          child: OutlinedButton(
            // Use OutlinedButton directly
            onPressed: trulyDisabled ? null : onPressed,
            style:
                OutlinedButton.styleFrom(
                  backgroundColor: backgroundColor ?? Colors.transparent,
                  foregroundColor: trulyDisabled
                      ? disabledForegroundColor
                      : textColor ??
                            primaryColor, // Default text color for outlined
                  padding: padding ?? EdgeInsets.symmetric(horizontal: 16.w),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      borderRadius?.r ?? appSharedRadius,
                    ),
                  ),
                  side: BorderSide(
                    // Define the border side
                    color: trulyDisabled
                        ? disabledForegroundColor.withValues(alpha: 0.5)
                        : borderColor ?? outlineColor,
                    width: 1.0,
                  ),
                  textStyle: baseTextStyle,
                  minimumSize: Size(0, (height ?? 48).h),
                ).copyWith(
                  overlayColor: WidgetStateProperty.resolveWith<Color?>((
                    Set<WidgetState> states,
                  ) {
                    if (states.contains(WidgetState.pressed) &&
                        !trulyDisabled) {
                      return (textColor ?? primaryColor).withValues(
                        alpha: 0.12,
                      ); // Use text color for overlay
                    }
                    return null; // Defer to the default
                  }),
                ),
            child: buttonChild,
          ),
        );

      case ButtonType.text:
        return SizedBox(
          width: width?.w,
          height: height?.h,
          child: TextButton(
            onPressed: trulyDisabled ? null : onPressed,
            style:
                TextButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  foregroundColor: trulyDisabled
                      ? disabledForegroundColor
                      : textColor ?? primaryColor,
                  padding: padding ?? EdgeInsets.symmetric(horizontal: 16.w),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      borderRadius?.r ?? appSharedRadius,
                    ),
                  ),
                  textStyle: baseTextStyle,
                  minimumSize: Size(0, (height ?? 48).h),
                ).copyWith(
                  overlayColor: WidgetStateProperty.resolveWith<Color?>((
                    Set<WidgetState> states,
                  ) {
                    if (states.contains(WidgetState.pressed) &&
                        !trulyDisabled) {
                      return (textColor ?? primaryColor).withValues(
                        alpha: 0.12,
                      );
                    }
                    return null; // Defer to the default
                  }),
                ),
            child: buttonChild,
          ),
        );
    }
  }
}
