import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../styles/app_colors.dart';
import '../../widgets/atoms/app_text.dart';
import '../../widgets/molecules/market_selector.dart';
import '../../widgets/molecules/settings_list_item.dart';
import '../../widgets/templates/section_container.dart';

@RoutePage()
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
          SectionContainer(
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
          SectionContainer(
            title: 'Theme',
            child: SettingsSwitchItem(
              title: 'Dark Mode',
              value: false, // TODO: Get from bloc
              onChanged: (value) {
                // TODO: Handle theme change
              },
            ),
          ),
          SectionContainer(
            title: 'Cache',
            child: SettingsListItem(
              title: 'Clear Cache',
              trailing: const Icon(Icons.delete_outline),
              onTap: () {
                // TODO: Handle clear cache
              },
            ),
          ),
          SectionContainer(
            title: 'About',
            child: Column(
              children: [
                SettingsListItem(
                  title: 'Version',
                  trailing: AppText('1.0.0'), // TODO: Get from package info
                ),
                SettingsListItem(
                  title: 'Terms of Service',
                  showForwardIcon: true,
                  onTap: () {
                    // TODO: Open terms of service
                  },
                ),
                SettingsListItem(
                  title: 'Privacy Policy',
                  showForwardIcon: true,
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
} 