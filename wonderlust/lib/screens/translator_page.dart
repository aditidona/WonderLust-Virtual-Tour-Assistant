import 'package:flutter/material.dart';
import 'package:wonderlust/utilities/bottom_drawer.dart';
import 'package:wonderlust/utilities/side_drawer.dart';

class TranslatorPage extends StatefulWidget {
  const TranslatorPage({Key? key}) : super(key: key);

  @override
  _TranslatorPageState createState() => _TranslatorPageState();
}

class _TranslatorPageState extends State<TranslatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Translate'),
      ),
      drawer: SideDrawer(),
      bottomNavigationBar: BottomDrawer(),
    );
  }
}
