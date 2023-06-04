import 'package:flutter/material.dart';
import 'package:portfolio/src/common/colors/app_colors.dart';
import 'package:portfolio/src/common/images/app_images.dart';
import 'package:portfolio/src/services/size_extensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const route = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width * 0.3;

    return Container(
      height: context.percentHeight(.8145),
      width: double.infinity,
      color: AppColors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: size,
              height: size,
              child: ClipOval(
                child: Image.asset(
                  AppImages.myPhoto,
                  width: size,
                  height: size,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Flexible(
                child: Text('Charleston Ribeiro',
                    style: Theme.of(context).textTheme.headlineMedium),
              ),
            ),
            Center(
              child: Flexible(
                child: Text('Desenvolvedor mobile Flutter',
                    style: Theme.of(context).textTheme.headlineSmall),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
