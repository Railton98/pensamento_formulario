import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:pensamento_formulario/app/modules/sentimento/pages/status/status_page.dart';

main() {
  testWidgets('StatusPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(StatusPage()));
    final titleFinder = find.text('Status');
    expect(titleFinder, findsOneWidget);
  });
}
