import 'package:flutter/material.dart';

class SoberClock extends StatelessWidget {
  const SoberClock({super.key});

  final int _days = 48;

  final int _hours = 3;

  final int _minutes = 55;

  final int _seconds = 23;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.lightBlue[100],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Sober Clock',
                style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'HappyMonkey',
                    fontWeight: FontWeight.bold)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('$_days',
                    style: const TextStyle(
                        fontSize: 45,
                        fontFamily: 'HappyMonkey',
                        fontWeight: FontWeight.bold)),
                const Text(' Days',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'HappyMonkey',
                        fontWeight: FontWeight.bold)),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('${_hours}h ',
                    style: const TextStyle(
                        fontSize: 30,
                        fontFamily: 'HappyMonkey',
                        fontWeight: FontWeight.bold)),
                Text('${_minutes}m ',
                    style: const TextStyle(
                        fontSize: 25,
                        fontFamily: 'HappyMonkey',
                        fontWeight: FontWeight.bold)),
                Text('${_seconds}s',
                    style: const TextStyle(
                        fontSize: 20,
                        fontFamily: 'HappyMonkey',
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ));
  }
}
