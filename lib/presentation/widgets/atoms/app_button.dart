import 'package:flutter/material.dart';
import '../../styles/app_colors.dart';
import '../../styles/app_text_styles.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool isOutlined;
  final Color? backgroundColor;
  final double? width;
  final double height;
  final EdgeInsets padding;
  final double borderRadius;

  const AppButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isLoading = false,
    this.isOutlined = false,
    this.backgroundColor,
    this.width,
    this.height = 48,
    this.padding = const EdgeInsets.symmetric(horizontal: 16),
    this.borderRadius = 8,
  });

  @override
  Widget build(BuildContext context) {
    final bgColor = backgroundColor ?? AppColors.primary;

    if (isOutlined) {
      return OutlinedButton(
        onPressed: isLoading ? null : onPressed,
        style: OutlinedButton.styleFrom(
          padding: padding,
          minimumSize: Size(width ?? 0, height),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          side: BorderSide(color: bgColor),
        ),
        child: _buildChild(bgColor),
      );
    }

    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        padding: padding,
        backgroundColor: bgColor,
        minimumSize: Size(width ?? 0, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: _buildChild(AppColors.textLight),
    );
  }

  Widget _buildChild(Color textColor) {
    if (isLoading) {
      return SizedBox(
        height: 20,
        width: 20,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation<Color>(textColor),
        ),
      );
    }

    return Text(
      text,
      style: AppTextStyles.buttonMedium.copyWith(color: textColor),
    );
  }

  // Factory constructors for different button styles
  factory AppButton.primary({
    Key? key,
    required String text,
    required VoidCallback onPressed,
    bool isLoading = false,
    double? width,
  }) =>
      AppButton(
        key: key,
        text: text,
        onPressed: onPressed,
        isLoading: isLoading,
        width: width,
      );

  factory AppButton.secondary({
    Key? key,
    required String text,
    required VoidCallback onPressed,
    bool isLoading = false,
    double? width,
  }) =>
      AppButton(
        key: key,
        text: text,
        onPressed: onPressed,
        isLoading: isLoading,
        width: width,
        backgroundColor: AppColors.secondary,
      );

  factory AppButton.outlined({
    Key? key,
    required String text,
    required VoidCallback onPressed,
    bool isLoading = false,
    double? width,
  }) =>
      AppButton(
        key: key,
        text: text,
        onPressed: onPressed,
        isLoading: isLoading,
        width: width,
        isOutlined: true,
      );
} 