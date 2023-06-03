import 'package:flutter/material.dart';
import 'package:portfolio/src/screen/technologies/Components/custom_card_skills_data.dart';
import 'package:portfolio/src/services/size_extensions.dart';

class CustomCardSkills extends StatelessWidget {
  const CustomCardSkills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28), // Define o raio da borda
        ),
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const CustomCardSkillsData(text: 'Dart/Flutter', value: 0.75),
              SizedBox(
                height: context.percentHeight(0.01728),
              ),
              const CustomCardSkillsData(text: 'GitHub', value: 0.60),
              SizedBox(
                height: context.percentHeight(0.01728),
              ),
              const CustomCardSkillsData(text: 'Firebase', value: 0.50),
              SizedBox(
                height: context.percentHeight(0.01728),
              ),
              const CustomCardSkillsData(text: 'MYSQL', value: 0.40),
              SizedBox(
                height: context.percentHeight(0.01728),
              ),
              const CustomCardSkillsData(text: 'Django', value: 0.40),
            ],
          ),
        ),
      ),
    );
  }
}