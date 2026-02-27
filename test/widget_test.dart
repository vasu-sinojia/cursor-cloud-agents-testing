// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:cursor_cloud_agents_testing/main.dart';

void main() {
  testWidgets('Login form validates input and button state', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    final emailField = find.byType(TextFormField).at(0);
    final passwordField = find.byType(TextFormField).at(1);
    final loginButton = find.widgetWithText(ElevatedButton, 'Login');

    ElevatedButton button = tester.widget(loginButton);
    expect(button.onPressed, isNull);

    await tester.enterText(emailField, 'invalid-email');
    await tester.enterText(passwordField, '12345');
    await tester.pump();

    expect(find.text('Enter a valid email address'), findsOneWidget);
    expect(find.text('Password must be at least 8 characters'), findsOneWidget);
    button = tester.widget(loginButton);
    expect(button.onPressed, isNull);

    await tester.enterText(emailField, 'user@example.com');
    await tester.enterText(passwordField, 'strongPass123');
    await tester.pump();

    button = tester.widget(loginButton);
    expect(button.onPressed, isNotNull);

    await tester.tap(loginButton);
    await tester.pump();

    expect(find.text('Login successful'), findsOneWidget);
  });
}
