import 'package:flutter/material.dart';
import 'package:portfolio/src/common/colors/app_colors.dart';
import 'package:portfolio/src/common/images/app_images.dart';
import 'package:portfolio/src/screen/contact/contact_controllers.dart';
import 'package:portfolio/src/services/size_extensions.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  static const route = 'ContactScreen';

  @override
  Widget build(BuildContext context) {
    final contactControllers = ContactControllers();
    return Container(
      height: context.percentHeight(.15),
      width: double.infinity,
      decoration: const BoxDecoration(color: AppColors.yellow),
      child: Column(
        children: [
          Flexible(
            child: Text('Charleston Ribeiro',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: AppColors.black)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () async {
                  await contactControllers.launch(contactControllers.email);
                },
                child: SizedBox(
                    height: context.percentHeight(.06),
                    child: Image.asset(AppImages.gmail)),
              ),
              SizedBox(
                width: context.percentWidth(.05),
              ),
              InkWell(
                onTap: () async {
                  await contactControllers.launch(contactControllers.github);
                },
                child: SizedBox(
                    height: context.percentHeight(.06),
                    child: Image.asset(AppImages.github)),
              ),
              SizedBox(
                width: context.percentWidth(.05),
              ),
              InkWell(
                onTap: () async {
                  await contactControllers.launch(contactControllers.linkedin);
                },
                child: SizedBox(
                    height: context.percentHeight(.06),
                    child: Image.asset(AppImages.linkedin)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//() => worksControllers.launch(worksControllers.layout),