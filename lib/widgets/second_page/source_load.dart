import 'package:flutter/material.dart';
import 'package:scube_cms/model/second_page/data_iteam_card.dart';

class CustomSourceLoadToggle extends StatefulWidget {
  const CustomSourceLoadToggle({super.key});

  @override
  State<CustomSourceLoadToggle> createState() => _CustomSourceLoadToggleState();
}

class _CustomSourceLoadToggleState extends State<CustomSourceLoadToggle> {
  bool _isSource = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isSource = true;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: _isSource
                            ? const Color(0xFF2196F3)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        'Source',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: _isSource ? Colors.white : Colors.grey[600],
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isSource = false;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: !_isSource
                            ? const Color(0xFF2196F3)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        'Load',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: !_isSource ? Colors.white : Colors.grey[600],
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            SizedBox(
              height: 260,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                
                child: Column(
                  children: [
                    DataItemCard(
                      image: Image.asset(
                        'asset/data_type/solar-cell.png',
                        fit: BoxFit.fill,
                      ),
                      title: 'Data View',
                      status: 'Active',
                      statusColor: const Color(0xFF2196F3),
                      data1: '55505.63',
                      data2: '58805.63',
                    ),
                    const SizedBox(height: 8),
                    DataItemCard(
                      image: Image.asset('asset/data_type/asset.png'),
                      title: 'Data Type 2',
                      status: 'Active',
                      statusColor: const Color(0xFF2196F3),
                      data1: '55505.63',
                      data2: '58805.63',
                    ),
                    const SizedBox(height: 8),
                    DataItemCard(
                      image: Image.asset('asset/data_type/power.png'),
                      title: 'Data Type 3',
                      status: 'Inactive',
                      statusColor: Colors.red,
                      data1: '55505.63',
                      data2: '58805.63',
                    ),
                    const SizedBox(height: 8),
                    DataItemCard(
                      image: Image.asset('asset/data_type/solar-cell.png'),
                      title: 'Total Solar',
                      status: 'Active',
                      statusColor: const Color(0xFF2196F3),
                      data1: '55505.63',
                      data2: '58805.63',
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
