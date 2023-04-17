import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_application/color_container.dart';

void main() {
  group('ColorContainer tests', () {
    testWidgets('changes background color on tap', (WidgetTester tester) async {
      // Build the ColorContainer widget
      await tester.pumpWidget(
        const MaterialApp(
          home: ColorContainer(),
        ),
      );

      // Get the initial background color
      final initialColor =
          tester.widget<Scaffold>(find.byType(Scaffold)).backgroundColor;

      // Tap on the container
      await tester.tap(find.byType(GestureDetector));
      await tester.pumpAndSettle();

      // Get the new background color
      final newColor =
          tester.widget<Scaffold>(find.byType(Scaffold)).backgroundColor;

      // Check that the background color has changed
      expect(initialColor, isNot(newColor));
    });

    testWidgets('inital background color is yellow',
        (WidgetTester tester) async {
      // Build the ColorContainer widget
      await tester.pumpWidget(
        const MaterialApp(
          home: ColorContainer(),
        ),
      );

      // Get the initial background color
      final backgroundColor =
          tester.widget<Scaffold>(find.byType(Scaffold)).backgroundColor;

      // Check that the background color is yellow
      expect(backgroundColor, equals(Colors.yellow));
    });
  });
}
