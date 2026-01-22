import 'package:flutter/material.dart';
import 'package:scube_cms/model/first_page/status_card.dart';

Widget customStatusCard(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: StatusCard(
                imageName: Image.asset('asset/status_card/Live_AC_Power.png'),
                value: '10000 kW',
                label: 'Live AC Power',
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: StatusCard(
                imageName: Image.asset(
                  'asset/status_card/Plant_Generation.png',
                ),
                value: '82.58 %',
                label: 'Plant Generation',
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: StatusCard(
                imageName: Image.asset('asset/status_card/Live_PR.png'),
                value: '85.61 %',
                label: 'Live PR',
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: StatusCard(
                imageName: Image.asset('asset/status_card/Cumulative_PR.png'),
                value: '27.58 %',
                label: 'Cumulative PR',
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: StatusCard(
                imageName: Image.asset('asset/status_card/Return_PV.png'),

                value: '10000 ৳',
                label: 'Return PV (Till Today)',
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: StatusCard(
                imageName: Image.asset('asset/status_card/Total_Energy.png'),
                value: '10000 kWh',
                label: 'Total Energy',
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
