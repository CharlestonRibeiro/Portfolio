import 'package:flutter/material.dart';
import 'package:portfolio/src/common/colors/app_colors.dart';
import 'package:portfolio/src/services/size_extensions.dart';

class CustomCardWork extends StatelessWidget {
  final String customTitle;
  final String customText;
  final Future<void> Function()? customFunction;

  const CustomCardWork(
      {Key? key, required this.customTitle, required this.customFunction, required this.customText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.percentHeight(0.30),
      width: context.percentWidth(0.20),
      child: Card(
        color: AppColors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
        child: Padding(
          padding: EdgeInsets.all(context.percentWidth(.02)),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Flexible(
                  child: Text(customTitle,
                      style: Theme.of(context).textTheme.headlineMedium
                      ),
                ),

                Flexible(
                  child: Text(customText,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.white)
                      ),
                ),
                SizedBox(
                  width: context.percentHeight(.01),
                ),
                TextButton(
                  onPressed: customFunction, 
                  child: Flexible(
                    child: Text('Código',
                               style: TextStyle(
                                       color: Theme.of(context)
                                           .colorScheme
                                           .background)
                                  .copyWith(color: AppColors.yellow)
                                   ),
                  ))
              ],
            ),
          ),

      ),
    );
  }
}
