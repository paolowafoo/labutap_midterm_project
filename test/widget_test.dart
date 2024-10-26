// This is a basic Flutter widget test.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('Portfolio app test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyPortfolioApp());

    // Verify that the app title is shown.
    expect(find.text('My Portfolio'), findsOneWidget);

    // Verify that the "Your Name" and "Flutter Developer" texts are present on the screen.
    expect(find.text('Your Name'), findsOneWidget);
    expect(find.text('Flutter Developer'), findsOneWidget);

    // Open the drawer and check for "About Me" and "Projects" menu items.
    await tester.tap(find.byIcon(Icons.menu));
    await tester.pump(); // Rebuild after opening the drawer.

    expect(find.text('About Me'), findsOneWidget);
    expect(find.text('Projects'), findsOneWidget);
  });
}
