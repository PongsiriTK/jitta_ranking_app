import 'package:flutter/material.dart';
import '../../styles/app_text_styles.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  const AppText(
    this.text, {
    super.key,
    this.style,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });

  // Factory constructors for different text styles
  factory AppText.h1(
    String text, {
    Key? key,
    TextAlign? textAlign,
    Color? color,
  }) =>
      AppText(
        text,
        key: key,
        style: AppTextStyles.h1.copyWith(color: color),
        textAlign: textAlign,
      );

  factory AppText.h2(
    String text, {
    Key? key,
    TextAlign? textAlign,
    Color? color,
  }) =>
      AppText(
        text,
        key: key,
        style: AppTextStyles.h2.copyWith(color: color),
        textAlign: textAlign,
      );

  factory AppText.h3(
    String text, {
    Key? key,
    TextAlign? textAlign,
    Color? color,
  }) =>
      AppText(
        text,
        key: key,
        style: AppTextStyles.h3.copyWith(color: color),
        textAlign: textAlign,
      );

  factory AppText.body(
    String text, {
    Key? key,
    TextAlign? textAlign,
    int? maxLines,
    Color? color,
  }) =>
      AppText(
        text,
        key: key,
        style: AppTextStyles.bodyMedium.copyWith(color: color),
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: maxLines != null ? TextOverflow.ellipsis : null,
      );

  factory AppText.label(
    String text, {
    Key? key,
    TextAlign? textAlign,
    Color? color,
  }) =>
      AppText(
        text,
        key: key,
        style: AppTextStyles.labelMedium.copyWith(color: color),
        textAlign: textAlign,
      );

  factory AppText.number(
    String text, {
    Key? key,
    TextAlign? textAlign,
    Color? color,
  }) =>
      AppText(
        text,
        key: key,
        style: AppTextStyles.numberMedium.copyWith(color: color),
        textAlign: textAlign,
      );

  @override
  Widget build(BuildContext context) {
    // Get the default text color from the theme if in app bar
    final defaultColor = Theme.of(context).primaryTextTheme.titleLarge?.color;
    final finalStyle = style?.copyWith(
          color: style?.color ?? defaultColor,
        ) ??
        TextStyle(color: defaultColor);

    return Text(
      text,
      style: finalStyle,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
} 