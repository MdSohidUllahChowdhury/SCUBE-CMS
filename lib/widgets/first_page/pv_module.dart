// Info Banner
import 'package:flutter/material.dart';

Widget modulePV(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(10),
    margin: EdgeInsets.all(10),
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
    child: Row(
      children: [
        Image.asset('asset/PV_Module.png'),
        const SizedBox(width: 12),
        Text(
          'Total Num of PV Module : ',
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
        ),
        Text(
          '6372 pcs. (585 Wp each)',
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w900),
        ),
      ],
    ),
  );
}
