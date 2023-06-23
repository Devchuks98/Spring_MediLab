import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:medical_app/models/colors/MyColors.dart';
import 'package:medical_app/models/widgets/payment_method.dart';
import 'package:medical_app/screens/Home.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final List<String> _payment = [
    'Doctor Name: Jane Smith',
    'Patient Name: William Henry',
    'Patient Type: Male',
    'Schedule: 13th March, 2023 - 9:30PM',
    'Total Fee: \$ 250',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Ionicons.arrow_back),
                      ),
                      const SizedBox(width: 8),
                      const Expanded(
                        //payment
                        child: Text(
                          'Payment',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const SizedBox(
                        width: 24,
                      ), // add some extra space after the text
                    ],
                  ),
                  const SizedBox(height: 10),

                  //Appointment details
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Text(
                          'Appointment Details',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white70,
                    ),
                    height: 260,
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListView.builder(
                        itemCount: _payment.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            dense: true,
                            title: Text(
                              _payment[index],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: _payment[index]
                                        .startsWith('Total Fee: \$ 250')
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  //payment method
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Text(
                          'Payment Method',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),

                  const SingleChildScrollView(
                    child: PaymentMethod(),
                  ),

                  const SizedBox(height: 30),

                  //pay $250
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          MyColor.primaryColor),
                      fixedSize: MaterialStateProperty.all(const Size(350, 50)),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 40),
                            backgroundColor: MyColor.primaryColor,
                            title: const Text(
                              'Appointment Done',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            content: const Text(
                              'You have successfully scheduled an appointment!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            actions: [
                              Center(
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                      Colors.white,
                                    ),
                                    fixedSize: MaterialStateProperty.all(
                                        const Size(250, 35)),
                                  ),
                                  onPressed: () {
                                    // Perform payment logic here
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const HomePage(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'OK',
                                    style: TextStyle(
                                      color: MyColor.primaryColor,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: const Text(
                      'Payment (\$250)',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),

                  const SizedBox(height: 15),

                  //Cancel
                  OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(color: MyColor.primaryColor, width: 2),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white70,
                      ),
                      fixedSize: MaterialStateProperty.all(
                        const Size(350, 50),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        fontSize: 18,
                        color: MyColor.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
