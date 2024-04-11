import 'package:flutter/material.dart';

class PiggyBank extends StatelessWidget {
  const PiggyBank({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 8,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(
          children: [
            Ink.image(
              image: const AssetImage('assets/images/PiggyBankBG.png'),
              fit: BoxFit.cover,
            ),
            const Positioned(
              top: 16,
              left: 16,
              child: Text(
                'Saved Money',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const Positioned(
              top: 40,
              left: 16,
              child: Text(
                '₹ 1000',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ));
  }
}
