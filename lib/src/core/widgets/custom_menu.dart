import 'package:flutter/material.dart';
import 'package:portfolio/src/core/colors/app_colors.dart';

class CustomMenu extends StatelessWidget {

  final ValueChanged<int> onMenuClick;

  const CustomMenu({super.key, required this.onMenuClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      decoration: const BoxDecoration(
        color: AppColors.black
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
              child: TextButton(onPressed: () => onMenuClick(1), 
                child:  Text(
                  'INICIO',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 24)
                ),
              ),
            ),
            Flexible(
              child: TextButton(onPressed: () => onMenuClick(2), 
                child:  Text(
                  'SOBRE MIM',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 24)
                ),
              ),
            ),
            Flexible(
              child: TextButton(onPressed: () => onMenuClick(3), 
                child:  Text(
                  'TECNOLOGIAS',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 24)
                ),
              ),
            ),
            Flexible(
              child: TextButton(onPressed: () => onMenuClick(4), 
                child:  Text(
                  'TRABALHOS',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 24)
                ),
              ),
            ),
            Flexible(
              child: TextButton(onPressed: () => onMenuClick(5), 
                child:  Text(
                  'CONTATOS',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 24)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}









