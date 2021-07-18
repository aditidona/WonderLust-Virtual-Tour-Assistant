import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'authenthication/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'authenthication/loginScreen.dart';
import 'splashScreen.dart';
import 'package:wonderlust/screens/account_screen.dart';
import 'package:wonderlust/screens/chatbot_screen.dart';
import 'package:wonderlust/screens/home_page.dart';
import 'package:wonderlust/screens/translator_page.dart';
import 'package:wonderlust/screens/trip_page.dart';
import 'authenthication/signupScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomPage(),
      /*isAuth() == true
          ? HomePage()
          : FutureBuilder(
              future: currantUserhere(),
              builder: (context, authResultSnapshot) =>
                  authResultSnapshot.connectionState == ConnectionState.waiting
                      ? SplashScreen()
                      : LoginScreen()),*/
      initialRoute: '/login',
      routes: {
        //'/home': (context) => HomePage(),
        '/chatbot': (context) => ChatbotPage(),
        '/trip': (context) => TripPage(),
        '/translator': (context) => TranslatorPage(),
        '/account': (context) => AccountScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignUpScreen(),
      },
    );
  }
}

class HomPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<User?>(
      future: currantUserhere(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          User? user = snapshot.data;
          return HomePage(uid: user!.uid); //TasksPage(uid: user.uid);
        } else {
          return LoginScreen();
        }
      },
    );
  }
}
