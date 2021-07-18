import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonderlust/utilities/bottom_drawer.dart';
import 'package:wonderlust/utilities/side_drawer.dart';

class HomePage extends StatefulWidget {
  late String uid;
  HomePage({Key? key, required this.uid}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState(uid);
}

class _HomePageState extends State<HomePage> {
  late String uid;
  _HomePageState(this.uid);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: SideDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Hi user !',
              style: GoogleFonts.lato(
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Text(
                'Let\'s explore a new city !',
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                  fontSize: 15,
                )),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomDrawer(),
    );
  }
}
