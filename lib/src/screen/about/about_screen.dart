import 'package:flutter/material.dart';
import 'package:portfolio/src/common/colors/app_colors.dart';
import 'package:portfolio/src/services/size_extensions.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  static const route = 'AboutScreen';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.percentHeight(.8145),
      width: double.infinity,
      color: AppColors.grey,
      child: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Sou formado em Análise e Desenvolvimento de Sistemas',
                    style: Theme.of(context).textTheme.headlineSmall),
                Text('pelo Instituto Federal de Rondônia - IFRO',
                    style: Theme.of(context).textTheme.headlineSmall),
                Text(
                    'até o momento que entrei na faculdade só tive trabalhos braçais,',
                    style: Theme.of(context).textTheme.headlineSmall),
                Text('justamente por esse motivo comecei minha vida acadêmica,',
                    style: Theme.of(context).textTheme.headlineSmall),
                Text('já passei por estágio e projetos como bolsista,',
                    style: Theme.of(context).textTheme.headlineSmall),
                Text(
                    'no momento estou fazendo freelancer para adquirir experiência.',
                    style: Theme.of(context).textTheme.headlineSmall),
                Text(
                    'Estou iniciando na área de programação pelo Framework Flutter/Dart,',
                    style: Theme.of(context).textTheme.headlineSmall),
                Text('tecnologia essa na qual estou me especializando por meio',
                    style: Theme.of(context).textTheme.headlineSmall),
                Text('de bootcamps e cursos de formação online',
                    style: Theme.of(context).textTheme.headlineSmall),
                Text(
                    'em empresas nacionalmente reconhecidas: Proz e Flutterando',
                    style: Theme.of(context).textTheme.headlineSmall),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
