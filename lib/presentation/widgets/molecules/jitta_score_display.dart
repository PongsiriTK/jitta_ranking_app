import 'package:flutter/material.dart';
import '../../styles/app_colors.dart';
import '../../styles/app_text_styles.dart';
import '../atoms/app_text.dart';

class JittaScoreDisplay extends StatelessWidget {
  final double score;
  final double? previousScore;
  final bool showChange;
  final bool showLabel;

  const JittaScoreDisplay({
    super.key,
    required this.score,
    this.previousScore,
    this.showChange = true,
    this.showLabel = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (showLabel)
          AppText(
            'JITTA SCORE',
            style: AppTextStyles.labelSmall.copyWith(
              letterSpacing: 1.2,
              fontWeight: FontWeight.bold,
            ),
          ),
        const SizedBox(height: 4),
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            AppText.number(score.toStringAsFixed(1)),
            if (showChange && previousScore != null) ...[
              const SizedBox(width: 8),
              _buildScoreChange(),
            ],
          ],
        ),
      ],
    );
  }

  Widget _buildScoreChange() {
    final change = score - previousScore!;
    final isPositive = change > 0;
    final color = isPositive ? AppColors.chartPositive : AppColors.chartNegative;
    final sign = isPositive ? '+' : '';
    final changeText = '$sign${change.toStringAsFixed(1)}';

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          isPositive ? Icons.arrow_upward : Icons.arrow_downward,
          color: color,
          size: 16,
        ),
        const SizedBox(width: 4),
        AppText(
          changeText,
          style: AppTextStyles.labelSmall.copyWith(color: color),
        ),
      ],
    );
  }

  Color _getScoreColor() {
    if (score >= 8) return AppColors.success;
    if (score >= 6) return AppColors.info;
    if (score >= 4) return AppColors.warning;
    return AppColors.error;
  }
} 