import 'package:flutter/material.dart';
import 'package:scube_cms/model/first_page/data_table.dart';

Widget customDataTable(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          DataTableModel(
            label: '',
            yesterday: "Yesterday's Data",
            today: "Today's Data",
            color: Colors.white,
          ),
          DataTableModel(
            label: 'AC Max Power',
            yesterday: '1636.50 kWh',
            today: '2121.88 kWh',
            color: Colors.white,
          ),
          DataTableModel(
            label: 'Net Energy',
            yesterday: '6439.16 kWh',
            today: '4875.77 kWh',
            color: Color(0xffEEF3F9),
          ),
          DataTableModel(
            label: 'Specific Yield',
            yesterday: '1.25 kWh/kWp',
            today: '0.94 kWh/kWp',
            color: Colors.white,
          ),
          DataTableModel(
            label: 'Net Energy',
            yesterday: '6439.16 kWh',
            today: '4875.77 kWh',
            color: Color(0xffEEF3F9),
          ),
          DataTableModel(
            label: 'Specific Yield',
            yesterday: '1.25 kWh/kWp',
            today: '0.94 kWh/kWp',
            color: Colors.white,
          ),
        ],
      ),
    ),
  );
}
