import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scube_cms/views/first_page.dart';
import 'package:scube_cms/views/splash_screen.dart';
import 'package:scube_cms/widgets/navigate.dart';
import 'package:scube_cms/widgets/second_page/grid_action.dart';
import 'package:scube_cms/widgets/second_page/source_load.dart';
import 'package:scube_cms/widgets/second_page/tab_section.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEF3F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Get.to(() => SplashScreen()),
        ),
        title: const Text(
          '2nd Page',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.notifications_outlined,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              Positioned(
                right: 17,
                top: 13,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            navigatepagege(
              '1st Page Navigate',
              () => Get.to(() => SolarPowerDashboard()),
            ),
            const SizedBox(height: 16),
            TabSection(),
            const SizedBox(height: 16),
            CustomSourceLoadToggle(),
            const SizedBox(height: 16),
            ActionButtonsGrid(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
