import 'package:flutter/material.dart';
import 'package:portfolio/src/core/colors/app_colors.dart';

class ContactScreen extends StatelessWidget {

  const ContactScreen({ Key? key }) : super(key: key);

  static const route = 'ContactScreen';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: AppColors.gray, 
    );
  }
}