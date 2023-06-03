import 'package:flutter/material.dart';
import 'package:portfolio/src/core/colors/app_colors.dart';
import 'package:portfolio/src/screen/work/components/custom_card_work.dart';
import 'package:portfolio/src/services/size_extensions.dart';
import 'package:url_launcher/url_launcher.dart';

class WorkScreen extends StatelessWidget {
  const WorkScreen({Key? key}) : super(key: key);

  static const route = 'WorkScreen';

  @override
  Widget build(BuildContext context) {
    final Uri layout = Uri.parse(
        'https://github.com/CharlestonRibeiro/Desafio_App_Masterclass');
    final Uri vakinhaBurger = Uri.parse(
        'https://github.com/CharlestonRibeiro/Vakinha_burger');
    final Uri screensWithContainers = Uri.parse(
        'https://github.com/CharlestonRibeiro/Screens_with_containers');
    final Uri appAluguelBicicleta = Uri.parse(
        'https://github.com/CharlestonRibeiro/App_aluguel_bicicleta');
    final Uri consoleFull = Uri.parse(
        'https://github.com/CharlestonRibeiro/Console_full');
    final Uri porkin = Uri.parse(
        'https://github.com/CharlestonRibeiro/Porkin.io');

    final Uri appMedicine = Uri.parse(
        'https://github.com/CharlestonRibeiro/App_medicine');
    final Uri consumoAPI = Uri.parse(
        'https://github.com/CharlestonRibeiro/API_Consumo');
    

    Future<void> launch(Uri url) async {
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Container(
        height: context.percentHeight(.8145),
        width: double.infinity,
        color: AppColors.gray,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.percentWidth(.04)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Trabalhos',
                  style: Theme.of(context).textTheme.headlineSmall),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: context.percentHeight(.02),
                  ),
                  CustomCardWork(
                    customTitle: 'Layout App',
                    customText: 'Desafio de reprodução de layout App',
                    customFunction: () => launch(layout),
                  ),
                  SizedBox(
                    height: context.percentHeight(.02),
                  ),
                  CustomCardWork(
                    customTitle: 'Vakinha burger',
                    customText:
                        'Vakinha burger dart week Academia do Flutter.',
                    customFunction:() => launch(vakinhaBurger),
                  ),
                  SizedBox(
                    height: context.percentHeight(.02),
                  ),
                  CustomCardWork(
                    customTitle: 'Desafio telas',
                    customText:
                        'Desafio MasterClass telas Flutter apenas com containers',
                    customFunction:() => launch(screensWithContainers),

                  ),
                  SizedBox(
                    height: context.percentHeight(.02),
                  ),
                  CustomCardWork(
                    customTitle: 'Aluguel Bike',
                    customText:
                        'Aplicativo desenvolvido em Flutter usando padrão MVP.',
                    customFunction: () => launch(appAluguelBicicleta),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: context.percentHeight(.02),
                  ),
                  CustomCardWork(
                    customTitle: 'Comando (CLI)',
                    customText:
                        'Sistema de Interface de Linha de Comando (CLI) desenvolvido em Dart.',
                    customFunction: () => launch(consoleFull),
                  ),
                  SizedBox(
                    height: context.percentHeight(.02),
                  ),
                 CustomCardWork(
                    customTitle: 'Porkin',
                    customText:
                        'App desenvolvido como entrega final do Bootcamp Formação de Desenvolvedor Mobile em Flutter, oferecido pela Proz tecnologia.',
                    customFunction: () => launch(porkin),
                  ),
                  SizedBox(
                    height: context.percentHeight(.02),
                  ),
                 CustomCardWork(
                  customTitle: 'API',
                    customText:
                        'Consumindo uma API com Dart.',
                    customFunction: () => launch(consumoAPI),  
                  ),
                  SizedBox(
                    height: context.percentHeight(.02),
                  ),
                  CustomCardWork(
                    customTitle:'TimeToDose',
                    customText:
                        'Aplicativo desenvolvido em Flutter para controle de horários de medicamento',
                    customFunction: () => launch(appMedicine) 
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
