import 'package:flutter/material.dart';
import 'package:portfolio/src/core/colors/app_colors.dart';

class WorkScreen extends StatelessWidget {

  const WorkScreen({ Key? key }) : super(key: key);

  static const route = 'WorkScreen';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: AppColors.yellow, 
    );
  }
}