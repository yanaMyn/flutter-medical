import 'package:flutter/material.dart';
import 'package:medical_app/widgets/banner_home.dart';
import 'package:medical_app/widgets/categories_item.dart';
import 'package:medical_app/widgets/doctor_card.dart';
import 'package:medical_app/widgets/home_navbar.dart';
import 'package:medical_app/widgets/search_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CategoriesItem> items = [
      const CategoriesItem(
        imagePath: "assets/clean.png",
        imageName: "Dentist",
      ),
      const CategoriesItem(
        imagePath: "assets/knife.png",
        imageName: "Surgeon",
      ),
      const CategoriesItem(
        imagePath: "assets/lungs.png",
        imageName: "Therapy",
      ),
      const CategoriesItem(
        imagePath: "assets/hormones.png",
        imageName: "Physiologist",
      ),
    ];

    final List<DoctorCard> doctorItems = [
      const DoctorCard(
        image: "assets/1.png",
        name: "Nycta Gina",
        specialist: "Pediatrician",
      ),
      const DoctorCard(
        image: "assets/2.png",
        name: "Nycta Gina",
        specialist: "Pediatrician",
      ),
      const DoctorCard(
        image: "assets/3.png",
        name: "Nycta Gina",
        specialist: "Pediatrician",
      ),
      const DoctorCard(
        image: "assets/4.png",
        name: "Nycta Gina",
        specialist: "Pediatrician",
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 24,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black54,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month_outlined,
              color: Colors.black54,
            ),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_outline,
              color: Colors.black54,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.black54,
            ),
            label: 'Inbox',
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(
                  height: 12,
                ),
                const HomeNavbar(),
                const SizedBox(
                  height: 16,
                ),
                const BannerHome(),
                const SizedBox(
                  height: 16,
                ),
                const SearchHome(),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 60,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => CategoriesItem(
                      imagePath: items[index].imagePath,
                      imageName: items[index].imageName,
                    ),
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 8,
                    ),
                    itemCount: items.length,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Doctor list",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => DoctorCard(
                        name: doctorItems[index].name,
                        image: doctorItems[index].image,
                        specialist: doctorItems[index].specialist),
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 16,
                    ),
                    itemCount: items.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
