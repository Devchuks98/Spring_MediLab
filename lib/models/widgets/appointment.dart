import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:intl/intl.dart';
import 'package:medical_app/models/colors/MyColors.dart';
import 'package:medical_app/models/widgets/payment_screen.dart';
import 'package:medical_app/models/widgets/time_selector.dart';

class Appointmentpage extends StatefulWidget {
  const Appointmentpage({super.key});

  @override
  State<Appointmentpage> createState() => _AppointmentpageState();
}

class _AppointmentpageState extends State<Appointmentpage> {
  DateTime _selectedDate = DateTime.now();
  bool _isNoonSelected = true;
  String? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //             builder: (context) => const CustomTableCalendar()));
        //   },
        //   backgroundColor: MyColor.primaryColor,
        //   child: const Icon(Icons.edit_calendar),
        // ),
        backgroundColor: Colors.grey[100],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Ionicons.arrow_back),
                    ),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Text(
                        'Appointment',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const SizedBox(
                        width: 24), // add some extra space after the text
                  ],
                ),
                const SizedBox(height: 20),

                //select date
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Select Date',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),

                //Appointment calender
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back_ios)),
                    const Text(
                      'May, 2023',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios)),
                  ],
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 80,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        31,
                        (index) {
                          DateTime date = DateTime(2023, 5, index + 1);
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedDate = date;
                              });
                            },
                            child: Container(
                              width: 80,
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                color: _selectedDate == date
                                    ? MyColor.primaryColor
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: _selectedDate == date
                                      ? MyColor.primaryColor
                                      : Colors.grey[300]!,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    date.day.toString(),
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: _selectedDate == date
                                          ? Colors.white
                                          : Colors.grey[800]!,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    DateFormat('E').format(date),
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: _selectedDate == date
                                          ? Colors.white
                                          : Colors.grey[800]!,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                //select time
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Select Time',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                //Noon and Night
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Noon
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isNoonSelected = true;
                        });
                      },
                      child: Container(
                        height: 70,
                        width: 150,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: _isNoonSelected
                              ? MyColor.primaryColor
                              : Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.sunny,
                              size: 25,
                              color: _isNoonSelected
                                  ? Colors.white
                                  : MyColor.primaryColor,
                            ),
                            Text(
                              'Noon',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: _isNoonSelected
                                    ? Colors.white
                                    : Colors.grey[800]!,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),

                    //Night
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isNoonSelected = false;
                        });
                      },
                      child: Container(
                        height: 70,
                        width: 150,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: !_isNoonSelected
                              ? MyColor.primaryColor
                              : Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.cloud,
                              size: 25,
                              color: _isNoonSelected
                                  ? MyColor.primaryColor
                                  : Colors.white,
                            ),
                            Text(
                              'Night',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: !_isNoonSelected
                                      ? Colors.white
                                      : Colors.grey[800]!,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                //Time selector
                TimeSelectWidget(
                  onTimeSelected: (String value) {
                    setState(() {
                      _selectedTime = value;
                    });
                  },
                ),

                const SizedBox(height: 30),

                //Confirm button
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(MyColor.primaryColor),
                    fixedSize: MaterialStateProperty.all(
                      const Size(350, 50),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PaymentPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Confirm',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
