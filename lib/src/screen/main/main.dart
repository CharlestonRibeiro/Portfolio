import 'package:flutter/material.dart';

class Main extends StatefulWidget {

  const Main({ Key? key }) : super(key: key);

  static const route = 'HomePage';

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('teste'),),
           body: Container(),
       );
  }
}