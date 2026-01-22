import 'package:flutter/material.dart';
import 'package:scube_cms/view/login_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
    ),
  );
}
