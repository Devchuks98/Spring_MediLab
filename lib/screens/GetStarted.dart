import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medical_app/models/widgets/button_view.dart';
import 'package:medical_app/screens/Register.dart';
import 'package:medical_app/models/colors/MyColors.dart';
import 'package:medical_app/screens/widget.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              const Spacer(),
              Lottie.asset(
                'assets/animations/hospital.json',
                height: 200,
                fit: BoxFit.contain,
              ),
              //title
              const Text(
                'Get All Medical Benefit',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              //Description
              const Text(
                'We are passionate about using our expertise and resources to make a positive impact on the health and wellbeing of our clients.',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              ButtonView(
                onPressed: () {
                  NavigationHelper.navigateToPage(
                      context, const RegisterUser());
                },
                child: const Text("Get Started"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
