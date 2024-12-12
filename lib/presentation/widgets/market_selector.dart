import 'package:flutter/material.dart';

class MarketSelector extends StatelessWidget {
  final String selectedMarket;
  final ValueChanged<String?> onChanged;

  const MarketSelector({
    super.key,
    required this.selectedMarket,
    required this.onChanged,
  });

  static const List<String> markets = [
    'TH', 'US', 'SG', 'VN', 'HK', 'UK', 'JP', 'CN', 'TW',
    'IN', 'AU', 'DE', 'CA', 'FR', 'KR', 'RU'
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: const InputDecoration(
        labelText: 'Market',
        prefixIcon: Icon(Icons.public),
      ),
      value: selectedMarket,
      items: markets.map((String market) {
        return DropdownMenuItem<String>(
          value: market,
          child: Text(market),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
} 