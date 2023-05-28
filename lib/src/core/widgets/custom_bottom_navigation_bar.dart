import 'package:flutter/material.dart';
import 'package:portfolio/src/core/colors/app_colors.dart';

class CustomBottomNavigationBar extends StatelessWidget {


  const CustomBottomNavigationBar({super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.yellow
      ),
      child: const Padding(
        padding:  EdgeInsets.all(8),
        child: Center(
          child: InkWell(
            child: Text('Charleston Ribeiro'))
        )
      ),
    );
  }
}