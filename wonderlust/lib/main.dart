import 'package:flutter/material.dart';
import 'package:wonderlust/screens/account_screen.dart';
import 'package:wonderlust/screens/chatbot_screen.dart';
import 'package:wonderlust/screens/home_page.dart';
import 'package:wonderlust/screens/translator_page.dart';
import 'package:wonderlust/screens/trip_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomePage(),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/chatbot': (context) => ChatbotPage(),
        '/trip': (context) => TripPage(),
        '/translator': (context) => TranslatorPage(),
        '/account': (context) => AccountScreen(),
      },
    );
  }
}
