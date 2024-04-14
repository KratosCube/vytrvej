import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:vytrvej/pages/information_page.dart';
import 'package:vytrvej/pages/progress_page.dart';
import 'package:vytrvej/utils/constants.dart';
import 'package:vytrvej/widgets/features/homepage/mood_graph.dart';
import 'package:vytrvej/widgets/features/homepage/piggy_bank.dart';
import 'package:vytrvej/widgets/features/homepage/sober_clock.dart';

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

  int _selectedIndex = 1;

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
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //First Row
            Padding(
              padding: const EdgeInsets.fromLTRB(0,8,0,8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Avatar
                      Container(
                        width: deviceWidth * 0.40,
                        height: deviceHeight * 0.1,
                        color: Colors.deepPurple[400],
                      ),
                      SizedBox(
                        height: deviceHeight * 0.01,
                      ),
                      //Sober Clock
                      SizedBox(
                        width: deviceWidth * 0.45,
                        height: deviceHeight * 0.2,
                        child: SoberClock(),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //Calendar
                      Container(
                        width: deviceWidth * 0.45,
                        height: deviceHeight * 0.31,
                        color: Colors.deepPurple[400],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Second Row
            Padding(
              padding: const EdgeInsets.fromLTRB(0,8,0,8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Saved Money
                  SizedBox(
                    width: deviceWidth * 0.45,
                    height: deviceHeight * 0.15,
                    child: const PiggyBank(),
                  ),
                  //Sober Button
                  Container(
                    width: deviceWidth * 0.40,
                    height: deviceHeight * 0.15,
                    color: Colors.deepPurple[400],
                  ),
                ],
              ),
            ),
            //Mood Graph
            Expanded(
              child: SizedBox(
                width: deviceWidth,
                height: deviceHeight * 0.2,
                child: const MoodGraph(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
              child: Container(
              
                width: deviceWidth,
                height: deviceHeight * 0.08,
                color: Colors.deepPurple[400],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
