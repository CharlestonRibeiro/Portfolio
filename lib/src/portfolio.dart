import 'package:flutter/material.dart';
import 'package:portfolio/src/screen/main/main.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
          title: 'Portfolio',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(),
          home: const Main(),
          routes: {
              Main.route: (context) => const Main(),
          },
    );
  }
}