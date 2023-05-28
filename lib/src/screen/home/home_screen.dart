import 'package:flutter/material.dart';
import 'package:portfolio/src/core/colors/app_colors.dart';
import 'package:portfolio/src/core/images/app_images.dart';
import 'package:portfolio/src/services/size_extensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const route = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.percentHeight(.8145),
      width: double.infinity,
      color: AppColors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: context.percentWidth(250 / 1440),
            height: context.percentHeight(250 / 800),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(AppImages.myPhoto),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text('Charleston Ribeiro',
              style: Theme.of(context).textTheme.headlineMedium),
          Text(
            'Eu sou um desenvolvedor mobile flutter',
            style: Theme.of(context).textTheme.headlineSmall),
  
        ],
      ),
    );
  }
}
