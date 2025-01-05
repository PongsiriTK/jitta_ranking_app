import 'package:flutter/material.dart';
import '../../styles/app_colors.dart';
import '../../styles/app_text_styles.dart';
import '../../widgets/atoms/app_text.dart';
import '../../widgets/molecules/market_selector.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: AppText.h3('Settings'),
      ),
      body: ListView(
        children: [
          _buildSection(
            title: 'Market',
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: MarketSelector(
                selectedMarket: 'US', // TODO: Get from bloc
                availableMarkets: const ['US', 'TH', 'SG', 'VN'], // TODO: Get from bloc
                onMarketSelected: (market) {
                  // TODO: Handle market selection
                },
              ),
            ),
          ),
          _buildSection(
            title: 'Theme',
            child: SwitchListTile(
              value: false, // TODO: Get from bloc
              onChanged: (value) {
                // TODO: Handle theme change
              },
              title: AppText('Dark Mode'),
            ),
          ),
          _buildSection(
            title: 'Cache',
            child: ListTile(
              title: AppText('Clear Cache'),
              trailing: const Icon(Icons.delete_outline),
              onTap: () {
                // TODO: Handle clear cache
              },
            ),
          ),
          _buildSection(
            title: 'About',
            child: Column(
              children: [
                ListTile(
                  title: AppText('Version'),
                  trailing: AppText(
                    '1.0.0', // TODO: Get from package info
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                ),
                ListTile(
                  title: AppText('Terms of Service'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    // TODO: Open terms of service
                  },
                ),
                ListTile(
                  title: AppText('Privacy Policy'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    // TODO: Open privacy policy
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required Widget child,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
          child: AppText(
            title,
            style: AppTextStyles.labelSmall.copyWith(
              color: AppColors.textSecondary,
              letterSpacing: 1.2,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          color: AppColors.surface,
          child: child,
        ),
      ],
    );
  }
} 