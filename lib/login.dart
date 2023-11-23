import 'package:flutter/material.dart';
import 'package:task_management/login_screen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isLoginSelected = true;
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
          ),
          PageView(
            controller: controller,
            children: const [
              LoginScreen(),
            ],
          ),
        ],
      ),
    );
  }
}
