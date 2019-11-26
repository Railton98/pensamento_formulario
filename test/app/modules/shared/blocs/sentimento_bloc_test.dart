import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:pensamento_formulario/app/modules/shared/blocs/shared_bloc.dart';
import 'package:pensamento_formulario/app/app_module.dart';

void main() {
  initModule(AppModule());
  SharedBloc bloc;

  setUp(() {
    bloc = AppModule.to.bloc<SharedBloc>();
  });

  group('SentimentoBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<SharedBloc>());
    });
  });
}
