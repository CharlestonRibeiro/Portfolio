import 'package:flutter/material.dart';
import 'package:portfolio/src/controller/menu_click_controller.dart';
import 'package:portfolio/src/core/widgets/custom_menu.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  static const route = 'HomePage';

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  final scrollController = ScrollController();

  final keySection1 = GlobalKey();
  final keySection2 = GlobalKey();
  final keySection3 = GlobalKey();

  @override
  void dispose() {
    scrollController.dispose;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final menuController = MenuClickController(
      customScrollController: scrollController,  
      customKeySection1: keySection1,
      customKeySection2: keySection2, 
      customKeySection3: keySection3, 
    );

    return Scaffold(
       floatingActionButton: FloatingActionButton(
          onPressed: () {
            scrollController.animateTo(
              0,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          },
        ),
      body: Column(
          children: [
            CustomMenu( onMenuClick: menuController.onMenuClick),
            Expanded(
              child: SingleChildScrollView(
                controller: scrollController,
                child: const Column(
                  children: [
                //  key: keySection1

                ]),
              ),
            ),
          ],
        ));
  } 

  
}
