import 'package:flutter/material.dart';
import 'package:medical_app/screens/SplashScreen.dart';

void main() => runApp(const MedicalApp());

class MedicalApp extends StatelessWidget {
  const MedicalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical App UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primaryColor: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
