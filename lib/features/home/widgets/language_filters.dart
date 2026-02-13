// import 'package:flutter/material.dart';

// class LanguageFilters extends StatelessWidget {
//   const LanguageFilters({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: const [
//         FilterChip(label: Text("All"), selected: true, onSelected: null),
//         SizedBox(width: 8),
//         FilterChip(label: Text("English"), selected: false, onSelected: null),
//         SizedBox(width: 8),
//         FilterChip(label: Text("Hindi"), selected: false, onSelected: null),
//       ],
//     );
//   }
// }


import 'package:flutter/material.dart';

class LanguageFilters extends StatelessWidget {
  const LanguageFilters({super.key});

  @override
  Widget build(BuildContext context) {
    final filters = [
      "All (236)",
      "English (151)",
      "Hindi (37)",
      "Urdu (17)",
      "Arabic (11)"
    ];

    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: filters.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 8),
            padding: const EdgeInsets.symmetric(horizontal: 14),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: index == 0
                  ? Colors.blue
                  : const Color(0xff1B2634),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(filters[index]),
          );
        },
      ),
    );
  }
}
