import 'package:pensamento_formulario/app/modules/sentimento/sentimento_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

class SentimentoModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => SentimentoBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => Container();

  static Inject get to => Inject<SentimentoModule>.of();
}
