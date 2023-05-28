import 'package:flutter/material.dart';

class MenuClickController {
  final GlobalKey customKeySection1;
  final GlobalKey customKeySection2;
  final GlobalKey customKeySection3;
  final ScrollController customScrollController;
  MenuClickController({
    required this.customKeySection1,
    required this.customKeySection2,
    required this.customKeySection3,
    required this.customScrollController,
  });

  void onMenuClick(int value) {
    RenderBox renderBox;

    switch (value) {
      case 1:
        renderBox =
            customKeySection1.currentContext!.findRenderObject() as RenderBox;
        break;
      case 2:
        renderBox =
            customKeySection2.currentContext!.findRenderObject() as RenderBox;
        break;
      case 3:
        renderBox =
            customKeySection3.currentContext!.findRenderObject() as RenderBox;
        break;
      default:
        throw Exception();
    }

    final offset = renderBox.localToGlobal(Offset.zero);

    customScrollController.animateTo(
      offset.dy + customScrollController.offset,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
