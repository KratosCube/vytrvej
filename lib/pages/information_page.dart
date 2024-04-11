import 'package:flutter/material.dart';
import 'package:vytrvej/widgets/features/homepage/mood_graph.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: MoodGraph(),
      ),);
  }
}