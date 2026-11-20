import 'package:flutter/material.dart';
import 'package:techmate_mobile/widgets/bottom_nav.dart';
import 'package:techmate_mobile/widgets/item_card.dart';

class ItemHomepage {
  final String title;
  final String subtitle;
  final Color backgroundColor;
  final IconData icon;

  ItemHomepage({
    required this.title,
    required this.subtitle,
    required this.backgroundColor,
    required this.icon,
  });
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final List<ItemHomepage> items = [
    ItemHomepage(
      title: 'Devices',
      subtitle: 'Laptops & Smartphones',
      backgroundColor: const Color(0xFF1D4ED8),
      icon: Icons.smartphone_rounded,
    ),
    ItemHomepage(
      title: 'Troubleshoot',
      subtitle: 'Solusi & Perbaikan',
      backgroundColor: const Color(0xFFEA580C),
      icon: Icons.build_circle_rounded,
    ),
    ItemHomepage(
      title: 'Tech Forum',
      subtitle: 'Diskusi Komunitas',
      backgroundColor: const Color(0xFF0369A1),
      icon: Icons.forum_rounded,
    ),
    ItemHomepage(
      title: 'Market',
      subtitle: 'Jual Beli',
      backgroundColor: const Color(0xFFDC2626),
      icon: Icons.storefront_rounded,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TechMate',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: items.map((ItemHomepage item) {
            return ItemCard(item);
          }).toList(),
        ),
      ),
      bottomNavigationBar: const BottomNav(currentIndex: 0),
    );
  }
}