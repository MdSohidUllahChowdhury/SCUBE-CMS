import 'package:flutter/material.dart';
import 'package:scube_cms/widgets/title_sub_title_style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0096FC),
      body: Column(
        children: [
          SizedBox(height: 100),
          Center(child: Image.asset('asset/scube_logo.png', height: 120)),
          SizedBox(height: 20),
          Text("SCUBE", style: CustomStyle.titleTextStyle),
          Text(
            "Control & Monitoring System",
            style: CustomStyle.subTitleTextStyle,
          ),

          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 70),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(26),
                  topRight: Radius.circular(26),
                ),
              ),
              child: Column(
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}
