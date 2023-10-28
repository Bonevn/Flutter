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
      body: Stack(
        children: <Widget>[
          PageView(
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
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Padding(
          //     padding: const EdgeInsets.only(bottom: 54),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: List.generate(
          //           2,
          //           (index) => _selectedIndex == index
          //               ? Image.asset("assets/vectors/ic_cham.svg")
          //               : Image.asset("assets/vectors/ic_cham_cam.svg")),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
