import 'package:flutter/material.dart';
import 'package:scube_cms/model/first_page/status_card.dart';

Widget customStatusCardTwo(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: StatusCard(
                imageName: Image.asset('asset/status_card_two/AC.png'),
                value: 'Total AC Capacity',
                label: '3000 KW',
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: StatusCard(
                imageName: Image.asset(
                  'asset/status_card_two/Total_DC_Capacity.png',
                ),
                value: 'Total DC Capacity',
                label: '3.727 MWp',
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: StatusCard(
                imageName: Image.asset(
                  'asset/status_card_two/Date_of_Commissioning.png',
                ),
                value: 'Date of Commissioning',
                label: '17/07/2024',
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: StatusCard(
                imageName: Image.asset(
                  'asset/status_card_two/Number_of_Inverter.png',
                ),
                value: 'Number of Inverter',
                label: '30',
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: StatusCard(
                imageName: Image.asset('asset/status_card_two/AC.png'),
                value: 'Total AC Capacity',
                label: '3000 KW',
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: StatusCard(
                imageName: Image.asset(
                  'asset/status_card_two/Total_DC_Capacity.png',
                ),
                value: 'Total DC Capacity',
                label: '3.727 MWp',
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
