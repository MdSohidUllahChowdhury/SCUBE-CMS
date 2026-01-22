import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0096FC),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 278,
              width: 176,
              margin: EdgeInsets.only(top: 120),
              decoration: BoxDecoration(),
              child: Column(children: [Image.asset('asset/scube_logo.png')]),
            ),
          ),
        ],
      ),
    );
  }
}
