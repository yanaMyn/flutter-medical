import 'package:flutter/material.dart';
import 'package:medical_app/pages/home_page.dart';

class StartedPage extends StatelessWidget {
  const StartedPage({super.key});

  void onTap() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Image.asset("assets/start.jpg"),
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "All specialists in one app ",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    // textAlign: TextAlign.left,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 100),
                    child: Text(
                      "Find Your Doctor and make an appointment with one app",
                      style: TextStyle(color: Colors.black45),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 44,
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                      child: const Text('Get Started'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
