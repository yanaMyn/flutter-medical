import 'package:flutter/material.dart';

class SearchHome extends StatelessWidget {
  const SearchHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: 46,
      decoration: BoxDecoration(
        color: const Color.fromARGB(95, 179, 173, 173),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Row(
        children: [
          Icon(
            Icons.search,
            size: 32,
            color: Colors.black54,
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            "How can we help you",
            style: TextStyle(
              color: Colors.black54,
            ),
          )
        ],
      ),
    );
  }
}
