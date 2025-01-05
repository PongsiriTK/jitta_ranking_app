import 'package:flutter/material.dart';
import '../../styles/app_colors.dart';

class AppCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Color? backgroundColor;
  final double borderRadius;
  final Border? border;
  final List<BoxShadow>? boxShadow;
  final VoidCallback? onTap;

  const AppCard({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.backgroundColor,
    this.borderRadius = 12,
    this.border,
    this.boxShadow,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final card = Container(
      padding: padding ?? const EdgeInsets.all(16),
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.surface,
        borderRadius: BorderRadius.circular(borderRadius),
        border: border,
        boxShadow: boxShadow ??
            [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
      ),
      child: child,
    );

    if (onTap != null) {
      return InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(borderRadius),
        child: card,
      );
    }

    return card;
  }

  // Factory constructors for different card styles
  factory AppCard.elevated({
    Key? key,
    required Widget child,
    EdgeInsets? padding,
    EdgeInsets? margin,
    double borderRadius = 12,
    VoidCallback? onTap,
  }) =>
      AppCard(
        key: key,
        padding: padding,
        margin: margin,
        borderRadius: borderRadius,
        onTap: onTap,
        child: child,
      );

  factory AppCard.outlined({
    Key? key,
    required Widget child,
    EdgeInsets? padding,
    EdgeInsets? margin,
    double borderRadius = 12,
    VoidCallback? onTap,
  }) =>
      AppCard(
        key: key,
        padding: padding,
        margin: margin,
        borderRadius: borderRadius,
        border: Border.all(color: AppColors.border),
        boxShadow: const [],
        onTap: onTap,
        child: child,
      );

  factory AppCard.flat({
    Key? key,
    required Widget child,
    EdgeInsets? padding,
    EdgeInsets? margin,
    double borderRadius = 12,
    VoidCallback? onTap,
  }) =>
      AppCard(
        key: key,
        padding: padding,
        margin: margin,
        borderRadius: borderRadius,
        boxShadow: const [],
        onTap: onTap,
        child: child,
      );
} 