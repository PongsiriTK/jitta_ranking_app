import 'package:flutter/material.dart';
import 'package:jitta_ranking_app/domain/entities/sector.dart';

class SectorSelector extends StatelessWidget {
  final List<Sector> sectors;
  final List<String> selectedSectors;
  final ValueChanged<List<String>> onChanged;

  const SectorSelector({
    super.key,
    required this.sectors,
    required this.selectedSectors,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<List<String>>(
      initialValue: selectedSectors,
      onSelected: (_) {},
      itemBuilder: (context) => [
        PopupMenuItem(
          enabled: false,
          child: StatefulBuilder(
            builder: (context, setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Select Sectors',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Divider(),
                  ...sectors.map(
                    (sector) => CheckboxListTile(
                      title: Text(sector.name),
                      value: selectedSectors.contains(sector.id),
                      onChanged: (bool? value) {
                        final newSelection = List<String>.from(selectedSectors);
                        if (value == true) {
                          newSelection.add(sector.id);
                        } else {
                          newSelection.remove(sector.id);
                        }
                        onChanged(newSelection);
                        setState(() {});
                      },
                    ),
                  ),
                  if (selectedSectors.isNotEmpty)
                    TextButton(
                      onPressed: () {
                        onChanged([]);
                        setState(() {});
                      },
                      child: const Text('Clear All'),
                    ),
                ],
              );
            },
          ),
        ),
      ],
      child: InputDecorator(
        decoration: const InputDecoration(
          labelText: 'Sectors',
          prefixIcon: Icon(Icons.business),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                selectedSectors.isEmpty
                    ? 'All Sectors'
                    : '${selectedSectors.length} Selected',
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
} 