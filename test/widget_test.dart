import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:chat_scroll_challenge/main.dart'; 

void main() {
  testWidgets('Chat App smoke test', (WidgetTester tester) async {
    // MyApp ki jagah ChatScrollChallenge use karein
    await tester.pumpWidget(const ChatScrollChallenge());

    // Kyunki aapki app counter app nahi hai, is liye nichli logic ko 
    // app ke UI ke mutabiq update karna hoga. 
    // Filhal error solve karne ke liye niche wali lines check karlein:
    expect(find.text('Chat Auto-Scroll Challenge'), findsOneWidget);
  });
}