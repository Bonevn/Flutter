import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_management/onboard_screen1.dart';
import 'package:task_management/onboard_screen2.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int _selectedIndex = 0;
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: const <Widget>[
          OnboardScreen1(),
          OnboardScreen2(),
        ],
      ),
    );
  }
}
