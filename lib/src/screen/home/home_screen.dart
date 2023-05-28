import 'package:flutter/material.dart';
import 'package:portfolio/src/core/colors/app_colors.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  static const route = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: AppColors.black, 
    );
  }
}