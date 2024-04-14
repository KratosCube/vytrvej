import 'package:flutter/material.dart';
import 'package:vytrvej/widgets/features/homepage/sober_clock.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: SoberClock(),
      ),);
  }
}