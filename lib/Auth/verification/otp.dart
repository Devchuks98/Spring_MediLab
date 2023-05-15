import 'package:flutter/material.dart';
import 'package:medical_app/screens/WelcomeBack.dart';
import 'package:medical_app/models/colors/MyColors.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String _otpCode = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: TextField(
            keyboardType: TextInputType.number,
            maxLength: 4,
            decoration: const InputDecoration(
              hintText: 'Enter OTP code',
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              setState(() {
                _otpCode = value;
              });
            },
          ),
        ),
        const SizedBox(height: 15),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(MyColor.primaryColor),
            fixedSize: MaterialStateProperty.all(
              const Size(250, 50),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WelcomeBack()),
            );
          },
          child: const Text(
            'Verify',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
