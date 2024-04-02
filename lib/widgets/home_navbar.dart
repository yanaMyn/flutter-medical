import 'package:flutter/material.dart';

class HomeNavbar extends StatelessWidget {
  const HomeNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "David Beckham",
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.grey,
          child: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("assets/pm.png"),
          ),
        )
      ],
    );
  }
}
