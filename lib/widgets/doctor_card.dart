// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String name;
  final String image;
  final String specialist;

  const DoctorCard({
    Key? key,
    required this.name,
    required this.image,
    required this.specialist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color.fromARGB(95, 179, 173, 173),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(image),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              name,
              overflow: TextOverflow.fade,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
            Text(
              specialist,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
