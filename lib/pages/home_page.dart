import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:vytrvej/pages/information_page.dart';
import 'package:vytrvej/pages/progress_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pages = [
    const ProgressPage(),
    const HomeScreen(),
    const InformationPage(),
    
  ];

  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: GNav(
          selectedIndex: _selectedIndex,
          onTabChange: _navigateBottomBar,
          gap: 8,
          tabs: const [
            GButton(icon: Icons.medication_outlined, text: 'Progress'),
            GButton(icon: Icons.home_outlined, text: 'Home'),
            GButton(icon: Icons.forum_outlined, text: 'Information'),
          ]),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: const Column(
      children: [
        Text('Home Screen'),
      ],
    ));
  }
}
