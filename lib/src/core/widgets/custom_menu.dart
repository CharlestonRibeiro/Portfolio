
import 'package:flutter/material.dart';
import 'package:portfolio/src/core/colors/app_colors.dart';

class CustomMenu extends StatelessWidget {

  final ValueChanged<int> onMenuClick;

  const CustomMenu({super.key, required this.onMenuClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.black
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(onPressed: () => onMenuClick(1), child: const Text('HOME',style: TextStyle(color: AppColors.white), )),
            TextButton(onPressed: () => onMenuClick(2), child: const Text('ABOUT',style: TextStyle(color: AppColors.white),)),
            TextButton(onPressed: () => onMenuClick(3), child: const Text('WORK',style: TextStyle(color: AppColors.white),)),
            TextButton(onPressed: () => onMenuClick(4), child: const Text('BLOG',style: TextStyle(color: AppColors.white),)),
            TextButton(onPressed: () => onMenuClick(5), child: const Text('CONTACT',style: TextStyle(color: AppColors.white),)),
          ],
        ),
      ),
    );
  }
}