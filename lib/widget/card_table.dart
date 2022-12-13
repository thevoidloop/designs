import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SigleCard(
              icon: Icons.pie_chart,
              color: Colors.blue,
              text: 'Graficas',
            ),
            _SigleCard(
              icon: Icons.access_alarms,
              color: Colors.deepPurple,
              text: 'Alarmas',
            ),
          ],
        ),
        TableRow(
          children: [
            _SigleCard(
              icon: Icons.shop,
              color: Colors.green,
              text: 'Shop',
            ),
            _SigleCard(
              icon: Icons.javascript,
              color: Colors.red,
              text: 'Javascrip',
            ),
          ],
        ),
        TableRow(
          children: [
            _SigleCard(
              icon: Icons.dark_mode,
              color: Colors.black54,
              text: 'Dark Mode',
            ),
            _SigleCard(
              icon: Icons.light_mode,
              color: Colors.grey,
              text: 'Light Mode',
            ),
          ],
        ),
        TableRow(
          children: [
            _SigleCard(
              icon: Icons.accessibility,
              color: Colors.yellow,
              text: 'Accessibility',
            ),
            _SigleCard(
              icon: Icons.add_a_photo,
              color: Colors.teal,
              text: 'Photo',
            ),
          ],
        ),
      ],
    );
  }
}

class _SigleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SigleCard({
    required this.icon,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 50,
            child: Icon(icon, size: 70, color: Colors.white),
          ),
          const SizedBox(height: 15),
          Text(text, style: TextStyle(color: color, fontSize: 25))
        ],
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {
  _CardBackground({required this.child});

  final Widget child;

  final boxDecoration = BoxDecoration(
    color: const Color.fromRGBO(62, 66, 107, 0.7),
    borderRadius: BorderRadius.circular(20),
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: size.height * 0.2,
            decoration: boxDecoration,
            child: child,
          ),
        ),
      ),
    );
  }
}
