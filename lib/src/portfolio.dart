import 'package:flutter/material.dart';
import 'package:portfolio/src/common/themeData/custom_theme_data.dart';
import 'package:portfolio/src/screen/about/about_screen.dart';
import 'package:portfolio/src/screen/contact/contact_screen.dart';
import 'package:portfolio/src/screen/home/home_screen.dart';
import 'package:portfolio/src/screen/main/main_screen.dart';
import 'package:portfolio/src/screen/technologies/technologies_screen.dart';
import 'package:portfolio/src/screen/work/work_screen.dart';
import 'package:device_preview/device_preview.dart';


class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(      
          title: 'Portfolio',
          debugShowCheckedModeBanner: false,
          
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,

          theme: customThemeData(), 
          home: const MainScreen(),
          routes: {
              MainScreen.route: (context) => const MainScreen(),
              HomeScreen.route: (context) => const HomeScreen(),
              ContactScreen.route: (context) => const ContactScreen(),
              TechnologiesScreen.route: (context) => const TechnologiesScreen(),
              AboutScreen.route: (context) => const AboutScreen(),
              WorkScreen.route: (context) => const WorkScreen(),
          },
    );
  }
}