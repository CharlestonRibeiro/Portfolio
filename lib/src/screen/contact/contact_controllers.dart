import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactControllers extends ChangeNotifier {
  final Uri linkedin =
      Uri.parse('https://www.linkedin.com/in/charleston-ribeiro-dos-passos/');

  final Uri github = Uri.parse('https://github.com/CharlestonRibeiro');

  final Uri email = Uri(
    scheme: 'mailto',
    path: 'charleston.passos@gmail.com',
  );

  Future<void> launch(Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
    NotificationListener;
  }
}
