import 'package:flutter/material.dart';
import '../../styles/app_colors.dart';
import '../../styles/app_text_styles.dart';
import '../atoms/app_text.dart';

class SettingsListItem extends StatelessWidget {
  final String title;
  final Widget? trailing;
  final VoidCallback? onTap;
  final bool showForwardIcon;
  final String? subtitle;

  const SettingsListItem({
    super.key,
    required this.title,
    this.trailing,
    this.onTap,
    this.showForwardIcon = false,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: AppText(title),
      subtitle: subtitle != null
          ? AppText(
              subtitle!,
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.textSecondary,
              ),
            )
          : null,
      trailing: trailing ??
          (showForwardIcon
              ? const Icon(Icons.arrow_forward_ios, size: 16)
              : null),
      onTap: onTap,
    );
  }
}

class SettingsSwitchItem extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;
  final String? subtitle;

  const SettingsSwitchItem({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: AppText(title),
      subtitle: subtitle != null
          ? AppText(
              subtitle!,
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.textSecondary,
              ),
            )
          : null,
      value: value,
      onChanged: onChanged,
    );
  }
} 