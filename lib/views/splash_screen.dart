import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scube_cms/views/login_screen.dart';
import 'package:scube_cms/widgets/title_sub_title_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashscreen();
  }

  splashscreen() async {
    await Future.delayed(const Duration(seconds:2 ), () {});
    Get.offAll(() => const LoginScreen(), transition: Transition.downToUp);
  }

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
        ],
      ),
    );
  }
}
