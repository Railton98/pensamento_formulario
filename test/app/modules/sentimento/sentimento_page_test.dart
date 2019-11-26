import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:pensamento_formulario/app/modules/sentimento/sentimento_page.dart';

main() {
  testWidgets('SentimentoPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(SentimentoPage()));
    final titleFinder = find.text('Sentimento');
    expect(titleFinder, findsOneWidget);
  });
}
