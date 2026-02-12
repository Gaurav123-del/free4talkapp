import 'package:flutter/material.dart';

class LanguageFilters extends StatelessWidget {
  const LanguageFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        FilterChip(label: Text("All"), selected: true, onSelected: null),
        SizedBox(width: 8),
        FilterChip(label: Text("English"), selected: false, onSelected: null),
        SizedBox(width: 8),
        FilterChip(label: Text("Hindi"), selected: false, onSelected: null),
      ],
    );
  }
}
