import 'package:flutter/material.dart';
import 'package:portfolio/src/core/themeData/custom_theme_data.dart';
import 'package:portfolio/src/screen/about/about_screen.dart';
import 'package:portfolio/src/screen/blog/blog_screen.dart';
import 'package:portfolio/src/screen/contact/contact_screen.dart';
import 'package:portfolio/src/screen/home/home_screen.dart';
import 'package:portfolio/src/screen/main/main_screen.dart';
import 'package:portfolio/src/screen/work/work_screen.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
          title: 'Portfolio',
          debugShowCheckedModeBanner: false,
          theme: customThemeData(), 
          home: const MainScreen(),
          routes: {
              MainScreen.route: (context) => const MainScreen(),
              HomeScreen.route: (context) => const HomeScreen(),
              ContactScreen.route: (context) => const ContactScreen(),
              BlogScreen.route: (context) => const BlogScreen(),
              AboutScreen.route: (context) => const AboutScreen(),
              WorkScreen.route: (context) => const WorkScreen(),

              
          },
    );
  }
}