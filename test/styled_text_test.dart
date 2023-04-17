import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_application/color_container.dart';

void main() {
  testWidgets('displays "Hello there" text', (WidgetTester tester) async {
    // Build the ColorContainer widget
    await tester.pumpWidget(
      const MaterialApp(
        home: ColorContainer(),
      ),
    );

    // Find the "Hello there" text
    final textFinder = find.text('Hello there');

    // Check that the text is displayed
    expect(textFinder, findsOneWidget);
  });
}
