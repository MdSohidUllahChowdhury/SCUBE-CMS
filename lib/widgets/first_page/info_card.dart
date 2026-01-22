import 'package:flutter/material.dart';
import 'package:scube_cms/model/first_page/info_card_model.dart';

class InfoCard extends StatelessWidget {
  final String title;

  const InfoCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Image.asset('asset/setting_icon.png'),
                    const SizedBox(width: 4),
                    Text(
                      '495.505 kWp / 440 kW',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.cyan,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 5),
            Divider(color: Colors.black, thickness: 0.3),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: InverterDataItem(
                    image: Image.asset('asset/info_card/image1.png'),
                    label: 'Lifetime Energy',
                    value: '352.96 MWh',
                  ),
                ),
                Expanded(
                  child: InverterDataItem(
                    image: Image.asset('asset/info_card/image2.png'),
                    label: 'Today Energy',
                    value: '273.69 kWh',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: InverterDataItem(
                    image: Image.asset('asset/info_card/image3.png'),
                    label: 'Prev. Meter Energy',
                    value: '0.00 MWh',
                  ),
                ),
                Expanded(
                  child: InverterDataItem(
                    image: Image.asset('asset/info_card/image4.png'),
                    label: 'Live Power',
                    value: '352.96 MWh',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
