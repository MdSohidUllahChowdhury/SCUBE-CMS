import 'package:flutter/material.dart';

Widget navigatepagege(String title,void Function()? pageName) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
    child: InkWell(
      onTap: pageName,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF4DD0E1), Color(0xFF26C6DA)],
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 8),
            const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
          ],
        ),
      ),
    ),
  );
}
