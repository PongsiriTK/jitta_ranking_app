import 'package:flutter/material.dart';
import '../../styles/app_colors.dart';
import '../../styles/app_text_styles.dart';
import '../atoms/app_text.dart';

class SectionContainer extends StatelessWidget {
  final String? title;
  final Widget child;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final Color backgroundColor;
  final Border? border;

  const SectionContainer({
    super.key,
    this.title,
    required this.child,
    this.padding = const EdgeInsets.all(16),
    this.margin = const EdgeInsets.only(top: 8),
    this.backgroundColor = AppColors.surface,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: border,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (title != null)
            Padding(
              padding: EdgeInsets.fromLTRB(
                padding.left,
                padding.top,
                padding.right,
                8,
              ),
              child: AppText(
                title!,
                style: AppTextStyles.labelSmall.copyWith(
                  color: AppColors.textSecondary,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          Padding(
            padding: title != null
                ? padding.copyWith(top: 0)
                : padding,
            child: child,
          ),
        ],
      ),
    );
  }
} 