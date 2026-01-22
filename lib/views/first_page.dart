import 'package:flutter/material.dart';
import 'package:scube_cms/widgets/first_page/data_table.dart';
import 'package:scube_cms/widgets/first_page/info_card.dart';
import 'package:scube_cms/widgets/first_page/pv_module.dart';
import 'package:scube_cms/widgets/first_page/slider.dart';
import 'package:scube_cms/widgets/first_page/status.dart';
import 'package:scube_cms/widgets/first_page/status_two.dart';
import 'package:scube_cms/widgets/navigate.dart';

// Main Dashboard Screen
class SolarPowerDashboard extends StatelessWidget {
  const SolarPowerDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEF3F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          '1st Page',
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
            navigatepagege(),
            const SizedBox(height: 10),
            customStatusCard(context),
            const SizedBox(height: 16),
            const SizedBox(height: 16),
            WeatherSliderPage(),
            const SizedBox(height: 16),
            customDataTable(context),
            const SizedBox(height: 16),
            modulePV(context),
            const SizedBox(height: 16),
            customStatusCardTwo(context),
            const SizedBox(height: 16),
            InfoCard(title: 'LT_01'),
            const SizedBox(height: 16),
            InfoCard(title: 'LT_01'),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
