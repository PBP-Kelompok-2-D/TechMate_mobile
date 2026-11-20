import 'package:flutter/material.dart';
import 'package:techmate_mobile/widgets/bottom_nav.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  final String username = 'User';
  final String bio = 'Bio';
  final String lastLogin = '17 Aug 2026, 19:45 WIB';

  @override
  Widget build(BuildContext context) {
    const darkCardColor = Color(0xFF0B1C2D);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: darkCardColor,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                decoration: BoxDecoration(
                  color: darkCardColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.person_rounded,
                        size: 56,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 14),
                    Text(
                      username,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Divider(color: Colors.white24),
                    const SizedBox(height: 6),
                    const Text(
                      'Last Login',
                      style: TextStyle(color: Colors.white54, fontSize: 12),
                    ),
                    Text(
                      lastLogin,
                      style: const TextStyle(color: Colors.white70, fontSize: 12),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 14),

              //  Bio
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: darkCardColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  '"$bio"',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color.fromARGB(179, 253, 246, 246),
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),

              const SizedBox(height: 14),

             // Market ama contact
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        color: darkCardColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Column(
                        children: [
                          Icon(Icons.storefront_rounded, size: 38, color: Colors.white),
                          SizedBox(height: 8),
                          Text(
                            'Market Items',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        color: darkCardColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Column(
                        children: [
                          Icon(Icons.phone_in_talk_rounded, size: 38, color: Colors.white),
                          SizedBox(height: 8),
                          Text(
                            'Contact',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Edit
              // TextButton.icon(
              //   onPressed: () {
              //     ScaffoldMessenger.of(context)
              //       ..hideCurrentSnackBar()
              //       ..showSnackBar(
              //         const SnackBar(content: Text('Edit Profile (Placeholder)')),
              //       );
              //   },
              //   style: TextButton.styleFrom(
              //     foregroundColor: const Color.fromARGB(255, 255, 255, 255),
              //   ),
              //   icon: const Icon(Icons.edit_outlined),
              //   label: const Text('Edit Profile'),
              // ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(
                        const SnackBar(content: Text('Edit (Placeholder)')),
                      );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  child: const Text('Edit'),
                ),
              ),
              const SizedBox(height: 8),

              // Logout
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(
                        const SnackBar(content: Text('Logout (Placeholder)')),
                      );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF820000),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  child: const Text('Logout'),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNav(currentIndex: 4),
    );
  }
}