import 'package:assessment/components/app_text.dart';
import 'package:assessment/constant/colors.dart';
import 'package:assessment/view/category/page/category_page.dart';
import 'package:assessment/view/home/page/home_page.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  late PageController _pageController;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(index,
          duration: const Duration(milliseconds: 500), curve: Curves.easeOut);
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() => _selectedIndex = index);
        },
        children: const [
          HomeScreen(),
          AppText(text: "Orders", size: 25, fontWeight: FontWeight.bold),
          CategoryScreen(),
          AppText(text: "Chats", size: 25, fontWeight: FontWeight.bold),
          AppText(text: "Profile", size: 25, fontWeight: FontWeight.bold)
        ],
      ),
      bottomNavigationBar: ConvexAppBar(
        initialActiveIndex: 1,
        backgroundColor: orangeColor,
        gradient: LinearGradient(
          colors: [purpleColor, greenColor],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: const [0.1, 2.5],
        ),
        cornerRadius: 8.0,
        style: TabStyle.fixedCircle,
        height: 70,
        curveSize: 130,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Orders'),
          TabItem(icon: Icons.restore_from_trash_outlined, title: 'Add'),
          TabItem(icon: Icons.message_rounded, title: 'Chats'),
          TabItem(icon: Icons.perm_identity_outlined, title: 'Profile'),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
