import 'package:flutter/material.dart';

class HomeIconReact extends StatelessWidget {
  final IconData icon;
  final String text;

  const HomeIconReact({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Icon(
            icon,
            size: 30,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}