import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomDrawer extends StatefulWidget {
  const BottomDrawer({Key? key}) : super(key: key);
  @override
  _BottomDrawerState createState() => _BottomDrawerState();
}

class _BottomDrawerState extends State<BottomDrawer> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return FloatingNavbar(
      onTap: (int val) {
        if (val == 0)
          Navigator.pushNamed(context, '/home');
        else if (val == 1)
          Navigator.pushNamed(context, '/chatbot');
        else if (val == 2)
          Navigator.pushNamed(context, '/trip');
        else if (val == 3)
          Navigator.pushNamed(context, '/translator');
        else if (val == 4) Navigator.pushNamed(context, '/account');

        //returns tab id which is user tapped
        setState(() {
          _index = val;
        });
      },
      currentIndex: _index,
      items: [
        FloatingNavbarItem(icon: Icons.home, title: 'Home'),
        FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'Help'),
        FloatingNavbarItem(icon: Icons.play_arrow_outlined, title: 'New Trip'),
        FloatingNavbarItem(icon: Icons.language_outlined, title: 'Translator'),
        FloatingNavbarItem(icon: Icons.account_circle_outlined, title: 'You'),
      ],
    );
  }
}
