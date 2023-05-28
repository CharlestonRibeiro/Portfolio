
import 'package:flutter/material.dart';

class CustomMenu extends StatelessWidget {

  final ValueChanged<int> onMenuClick;

  const CustomMenu({super.key, required this.onMenuClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(onPressed: () => onMenuClick(1), child: const Text('HOME')),
          TextButton(onPressed: () => onMenuClick(2), child: const Text('ABOUT')),
          TextButton(onPressed: () => onMenuClick(3), child: const Text('WORK')),
          TextButton(onPressed: () => onMenuClick(4), child: const Text('BLOG')),
          TextButton(onPressed: () => onMenuClick(5), child: const Text('CONTACT')),
        ],
      ),
    );
  }
}