import 'package:flutter/material.dart';
import 'package:medical_app/Auth/verification/otp.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  var num = '+234 9072623219';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    'assets/logo1.png',
                    height: 100,
                    //color: Colors.blue[700],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Verification',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),

                  //OTP description
                  const Text(
                    'Please enter the verification code sent to',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    num,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 50),

                  //OTP widget
                  const OtpScreen(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
