import 'package:flutter/material.dart';

class InverterDataItem extends StatelessWidget {
  final String label;
  final String value;
  final Image image;

  const InverterDataItem({
    super.key,
    required this.label,
    required this.value,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        image,
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(fontSize: 11, color: Colors.black54),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
