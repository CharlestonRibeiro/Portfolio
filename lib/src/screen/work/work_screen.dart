import 'package:flutter/material.dart';
import 'package:portfolio/src/common/colors/app_colors.dart';
import 'package:portfolio/src/screen/work/components/custom_card_work.dart';
import 'package:portfolio/src/screen/work/works_controllers.dart';
import 'package:portfolio/src/services/size_extensions.dart';

class WorkScreen extends StatelessWidget {
  const WorkScreen({Key? key}) : super(key: key);

  static const route = 'WorkScreen';

  
  @override
  Widget build(BuildContext context) {
    final worksControllers = WorksControllers();
    return Container(
        height: context.percentHeight(.8145),
        width: double.infinity,
        color: AppColors.grey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.percentWidth(.04)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Trabalhos',
                  style: Theme.of(context).textTheme.headlineMedium),
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: context.percentHeight(.02),
                  ),
                  CustomCardWork(
                    customTitle: 'Layout App',
                    customText: 'Desafio de reprodução de layout App',
                    customFunction: () => worksControllers.launch(worksControllers.layout),
                  ),
                  SizedBox(
                    height: context.percentHeight(.02),
                  ),
                  CustomCardWork(
                    customTitle: 'Vakinha burger',
                    customText: 'Vakinha burger dart week Academia do Flutter.',
                    customFunction: () => worksControllers.launch(worksControllers.vakinhaBurger),
                  ),
                  SizedBox(
                    height: context.percentHeight(.02),
                  ),
                  CustomCardWork(
                    customTitle: 'Desafio telas',
                    customText:
                        'Desafio MasterClass telas Flutter apenas com containers',
                    customFunction: () => worksControllers.launch(worksControllers.screensWithContainers),
                  ),
                  SizedBox(
                    height: context.percentHeight(.02),
                  ),
                  CustomCardWork(
                    customTitle: 'Aluguel Bike',
                    customText:
                        'Aplicativo desenvolvido em Flutter usando padrão MVP.',
                    customFunction: () => worksControllers.launch(worksControllers.appAluguelBicicleta),
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
                    customFunction: () => worksControllers.launch(worksControllers.consoleFull),
                  ),
                  SizedBox(
                    height: context.percentHeight(.02),
                  ),
                  CustomCardWork(
                    customTitle: 'Porkin',
                    customText:
                        'App desenvolvido como entrega final do Bootcamp Formação de Desenvolvedor Mobile em Flutter, oferecido pela Proz tecnologia.',
                    customFunction: () => worksControllers.launch(worksControllers.porkin),
                  ),
                  SizedBox(
                    height: context.percentHeight(.02),
                  ),
                  CustomCardWork(
                    customTitle: 'API',
                    customText: 'Consumindo uma API com Dart.',
                    customFunction: () => worksControllers.launch(worksControllers.consumoAPI),
                  ),
                  SizedBox(
                    height: context.percentHeight(.02),
                  ),
                  CustomCardWork(
                      customTitle: 'TimeToDose',
                      customText:
                          'Aplicativo desenvolvido em Flutter para controle de horários de medicamento',
                      customFunction: () => worksControllers.launch(worksControllers.appMedicine)),
                ],
              ),
            ],
          ),
        ));
  }
}
