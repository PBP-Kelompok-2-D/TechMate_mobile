import 'package:flutter/material.dart';
import 'package:techmate_mobile/routes/menu.dart';
import 'package:techmate_mobile/routes/forum_page.dart';
import 'package:techmate_mobile/routes/profile_page.dart';

class BottomNav extends StatelessWidget {
  final int currentIndex;

  const BottomNav({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Theme.of(context).colorScheme.secondary,
      elevation: 8,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // 1. Home
          IconButton(
            icon: Icon(
              Icons.home_rounded,
              color: currentIndex == 0
                  ? const Color.fromARGB(255, 255, 255, 255)
                  : Colors.grey,
            ),
            onPressed: () {
              if (currentIndex != 0) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              }
            },
          ),

          // 2. Devices (Belum ada halaman -> tanpa navigasi)
          const IconButton(
            icon: Icon(Icons.grid_view_rounded, color: Colors.grey),
            onPressed: null,
          ),

          // 3. Forum
          IconButton(
            icon: Icon(
              Icons.forum_rounded,
              color: currentIndex == 2
                  ? const Color.fromARGB(255, 255, 255, 255)
                  : Colors.grey,
            ),
            onPressed: () {
              if (currentIndex != 2) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const ForumPage()),
                );
              }
            },
          ),

          // 4. Shop (Belum ada halaman -> tanpa navigasi)
          const IconButton(
            icon: Icon(Icons.shopping_bag_rounded, color: Colors.grey),
            onPressed: null,
          ),

          // 5. Profile
          IconButton(
            icon: Icon(
              Icons.person_rounded,
              color: currentIndex == 4
                  ? const Color.fromARGB(255, 255, 255, 255)
                  : Colors.grey,
            ),
            onPressed: () {
              if (currentIndex != 4) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}