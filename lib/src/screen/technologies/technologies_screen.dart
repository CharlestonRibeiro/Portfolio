import 'package:flutter/material.dart';
import 'package:portfolio/src/core/colors/app_colors.dart';

class TechnologiesScreen extends StatelessWidget {

  const TechnologiesScreen({ Key? key }) : super(key: key);

  static const route = 'BlogScreen';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: AppColors.white, 
    );
  }
}