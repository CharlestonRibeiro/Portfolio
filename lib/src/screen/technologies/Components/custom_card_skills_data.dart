import 'package:flutter/material.dart';
import 'package:portfolio/src/common/colors/app_colors.dart';
import 'package:portfolio/src/services/size_extensions.dart';

class CustomCardSkillsData extends StatelessWidget {
  final String text;
  final double value;

  const CustomCardSkillsData(
      {Key? key, required this.text, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .titleSmall
             
        ),
        SizedBox(
          width: context.percentWidth(.5981),
          child: LinearProgressIndicator(
            backgroundColor: AppColors.white,
            valueColor:
                const AlwaysStoppedAnimation<Color>(AppColors.black),
            value: value,
          ),
        ),
      ],
    );
  }
}