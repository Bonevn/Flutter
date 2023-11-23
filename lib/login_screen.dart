import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 67, 141, 194),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding:
                  EdgeInsets.only(bottom: 20, right: 198, left: 10, top: 44.5),
              child: Text(
                "Username or E-mail",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              height: 55,
              width: 325,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 75,
                    spreadRadius: 0,
                    color: Color.fromRGBO(147, 147, 147, 0.1),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20, right: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Enter your username or E-mail",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(48, 48, 48, 0.4),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(bottom: 20, right: 276, left: 20, top: 24.53),
              child: Text(
                "Password",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              height: 55,
              width: 325,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 75,
                    spreadRadius: 0,
                    color: Color.fromRGBO(147, 147, 147, 0.1),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 25),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "Enter your password",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(48, 48, 48, 0.4),
                        ),
                      ),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SvgPicture.asset('assets/vectors/eye.svg'),
                        SvgPicture.asset('assets/vectors/crossed_line.svg'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(bottom: 32, top: 32, right: 25, left: 237),
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  fontFamily: "Nunito Sans",
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(48, 48, 48, 0.8),
                ),
              ),
            ),
            Container(
              width: 325,
              height: 57,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFFF26950)),
              child: const Text(
                "Login",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 19, top: 23.47),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      indent: 96,
                      endIndent: 14,
                      thickness: 1.0, // Độ dày của đường gạch
                      color: Color(0x3030301A), // Màu của đường gạch
                    ),
                  ),
                  Text('Or login with'),
                  Expanded(
                    child: Divider(
                      indent: 14,
                      endIndent: 96,
                      thickness: 1.0, // Độ dày của đường gạch
                      color: Color(0x3030301A), // Màu của đường gạch
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 53),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(12.5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35.0),
                    ),
                    child: SvgPicture.asset("assets/vectors/google_icon.svg"),
                  ),
                  const SizedBox(width: 34.5),
                  Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(12.5),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(242, 105, 80, 0.15),
                      borderRadius: BorderRadius.circular(35.0),
                    ),
                    child: SvgPicture.asset("assets/vectors/user.svg"),
                  ),
                  const SizedBox(width: 34.5),
                  Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(12.5),
                    decoration: BoxDecoration(
                      color: const Color(0xFF3D5A98),
                      borderRadius: BorderRadius.circular(35.0),
                    ),
                    child: SvgPicture.asset("assets/vectors/logo_facebook.svg"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
