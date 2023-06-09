import 'package:flutter/material.dart';
import 'package:portfolio/src/common/images/app_images.dart';
import 'package:portfolio/src/screen/technologies/components/custom_technology_card.dart';
import 'package:portfolio/src/services/size_extensions.dart';

class CustomTechnologyList extends StatelessWidget {
  const CustomTechnologyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomTechnologyCard(
            customImage: AppImages.flutterPNG,
            customText: 'Flutter',
          ),
          SizedBox(
            width: context.percentWidth(.025),
          ),
          const CustomTechnologyCard(
            customImage: AppImages.dart,
            customText: 'Dart',
          ),
          SizedBox(
            width: context.percentWidth(.025),
          ),
          const CustomTechnologyCard(
            customImage: AppImages.git,
            customText: 'Git',
          ),
          SizedBox(
            width: context.percentWidth(.025),
          ),
          const CustomTechnologyCard(
            customImage: AppImages.firebase,
            customText: 'Firebase',
          ),
          SizedBox(
            width: context.percentWidth(.025),
          ),
          const CustomTechnologyCard(
            customImage: AppImages.mysql,
            customText: 'MYSQL',
          ),
          SizedBox(
            width: context.percentWidth(.025),
          ),
          const CustomTechnologyCard(
            customImage: AppImages.django,
            customText: 'Django',
          ),
        ],
      ),
    );
  }
}
