
import 'package:flutter/material.dart';

class FilterChipGroup extends StatelessWidget {
  const FilterChipGroup({
    super.key,
    required this.title,
    required this.items,
    required this.selectedIds,
    required this.onSelectionChanged,
  });

  final String title;
  final List<({int id, String title})> items;
  final List<int> selectedIds;
  final ValueChanged<List<int>> onSelectionChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: items.map((item) {
            final selected = selectedIds.contains(item.id);

            return FilterChip(
              label: Text(item.title),
              selected: selected,
              onSelected: (value) {
                final updated = [...selectedIds];

                if (value) {
                  updated.add(item.id);
                } else {
                  updated.remove(item.id);
                }

                onSelectionChanged(updated);
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}