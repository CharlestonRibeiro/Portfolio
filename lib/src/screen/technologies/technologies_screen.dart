import 'package:flutter/material.dart';
import 'package:portfolio/src/common/colors/app_colors.dart';
import 'package:portfolio/src/screen/technologies/components/custom_card_skills.dart';
import 'package:portfolio/src/screen/technologies/components/custom_technology_list.dart';
import 'package:portfolio/src/services/size_extensions.dart';

class TechnologiesScreen extends StatelessWidget {
  const TechnologiesScreen({Key? key}) : super(key: key);

  static const route = 'TechnologiesScreen';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.percentHeight(.8145),
      width: double.infinity,
      color: AppColors.black,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.percentWidth(.04)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Text('Tecnologias que Conheço',
                    style: Theme.of(context).textTheme.headlineMedium)),
            SizedBox(
              height: context.percentHeight(.02),
            ),
            //          const CustomTechnologyList(),
            const CustomTechnologyList(),
            SizedBox(
              height: context.percentHeight(.08),
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text('Habilidades e Competências',
                    style: Theme.of(context).textTheme.headlineMedium)),
            SizedBox(
              height: context.percentHeight(.02),
            ),
            const CustomCardSkills(),
            //           const CustomCardSkills(),
            SizedBox(
              height: context.percentHeight(.02),
            ),
          ],
        ),
      ),
    );
  }
}
