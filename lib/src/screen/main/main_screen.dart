import 'package:flutter/material.dart';
import 'package:portfolio/src/controller/menu_click_controller.dart';
import 'package:portfolio/src/common/widgets/custom_menu.dart';
import 'package:portfolio/src/screen/about/about_screen.dart';
import 'package:portfolio/src/screen/technologies/technologies_screen.dart';
import 'package:portfolio/src/screen/contact/contact_screen.dart';
import 'package:portfolio/src/screen/home/home_screen.dart';
import 'package:portfolio/src/screen/work/work_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  static const route = 'MainScreen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final scrollController = ScrollController();

  final keySection1 = GlobalKey();
  final keySection2 = GlobalKey();
  final keySection3 = GlobalKey();
  final keySection4 = GlobalKey();
  final keySection5 = GlobalKey();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final menuController = MenuClickController(
      customScrollController: scrollController,
      customKeySection1: keySection1,
      customKeySection2: keySection2,
      customKeySection3: keySection3,
      customKeySection4: keySection4,
      customKeySection5: keySection5,
    );

    return Scaffold(
        body: Column(
      children: [
        CustomMenu(onMenuClick: menuController.onMenuClick),
        Expanded(
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(children: [
              HomeScreen(key: keySection1),
              AboutScreen(key: keySection2),
              TechnologiesScreen(key: keySection3),
              WorkScreen(key: keySection4),
              ContactScreen(key: keySection5),
            ]),
          ),
        ),
      ],
    ));
  }
}
