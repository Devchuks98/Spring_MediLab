import 'package:flutter/material.dart';
import 'package:medical_app/screens/WelcomeBack.dart';
import 'package:medical_app/models/colors/MyColors.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

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
        //pinput otp input package
        Pinput(
          onChanged: (value) {
            setState(() {
              _otpCode = value;
            });
          },
        ),
        const SizedBox(height: 30),
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
