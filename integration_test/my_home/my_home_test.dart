import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:study_integration/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('tap on the add button, verify counter',
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Verify the counter starts at 0.
      expect(find.text('0'), findsOneWidget);

      // Finds the add button to tap on.
      final fab = find.byKey(const Key('Increment'));

      // Emulate a tap on the add button.
      await tester.tap(fab);

      // Trigger a frame.
      await tester.pumpAndSettle();

      // Verify the counter increments by 1.
      expect(find.text('1'), findsOneWidget);
    });
    testWidgets('tap on the reduce button, verify counter',
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Verify the counter starts at 0.
      expect(find.text('0'), findsOneWidget);

      // Finds the reduce button to tap on.
      final fab = find.byKey(const Key('Reduce'));

      // Emulate a tap on the reduce button.
      await tester.tap(fab);

      // Trigger a frame.
      await tester.pumpAndSettle();

      // Verify the counter reduce by 1.
      expect(find.text('-1'), findsOneWidget);
    });
  });
}
