import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WorksControllers extends ChangeNotifier {
  
    final Uri layout =
      Uri.parse('https://github.com/CharlestonRibeiro/Desafio_App_Masterclass');
  final Uri vakinhaBurger =
      Uri.parse('https://github.com/CharlestonRibeiro/Vakinha_burger');
  final Uri screensWithContainers =
      Uri.parse('https://github.com/CharlestonRibeiro/Screens_with_containers');
  final Uri appAluguelBicicleta =
      Uri.parse('https://github.com/CharlestonRibeiro/App_aluguel_bicicleta');
  final Uri consoleFull =
      Uri.parse('https://github.com/CharlestonRibeiro/Console_full');
  final Uri porkin =
      Uri.parse('https://github.com/CharlestonRibeiro/Porkin.io');

  final Uri appMedicine =
      Uri.parse('https://github.com/CharlestonRibeiro/App_medicine');
  final Uri consumoAPI =
      Uri.parse('https://github.com/CharlestonRibeiro/API_Consumo');



  Future<void> launch(Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
    NotificationListener;
  }
}
