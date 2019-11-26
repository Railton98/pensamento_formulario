import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:pensamento_formulario/app/modules/shared/blocs/sentimento_bloc.dart';
import 'package:pensamento_formulario/app/app_module.dart';

void main() {
  initModule(AppModule());
  SentimentoBloc bloc;

  setUp(() {
    bloc = AppModule.to.bloc<SentimentoBloc>();
  });

  group('SentimentoBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<SentimentoBloc>());
    });
  });
}
