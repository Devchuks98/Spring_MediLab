import 'package:flutter/material.dart';
import 'package:medical_app/models/colors/MyColors.dart';
import 'package:ionicons/ionicons.dart';

//Doctor John Doe container UI
class DoctorJohn extends StatelessWidget {
  const DoctorJohn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 170,
      width: 310,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: MyColors.primaryColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              //Doctor Avatar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/doc john.png'),
                      fit: BoxFit.contain,
                    ),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50,
                  width: 50,
                ),
              ),

              //Doctor name
              const Text(
                'Dr. John. Doe \nCardioliogist Special',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),

          //schedule calender
          Container(
            height: 50,
            width: 310,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueAccent,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Calender icon
                Icon(
                  Ionicons.calendar,
                  color: Colors.white,
                ),
                SizedBox(width: 18),
                //Appointment date and time
                Text(
                  '15 Apr, 2023 - 10:00 PM',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Doctor Jane Smith container UI
class DoctorJane extends StatelessWidget {
  const DoctorJane({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 170,
      width: 310,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: MyColors.primaryColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              //Doctor Avatar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/doc jane.png'),
                      fit: BoxFit.contain,
                    ),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50,
                  width: 50,
                ),
              ),

              //Doctor name
              const Text(
                'Dr. Jane Smith \nPediatrician Special',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),

          //schedule calender
          Container(
            height: 50,
            width: 310,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueAccent,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Calender icon
                Icon(
                  Ionicons.calendar,
                  color: Colors.white,
                ),
                SizedBox(width: 18),
                //Appointment date and time
                Text(
                  '18 Apr, 2023 - 12:00 PM',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Doctor David Lee container UI
class DoctorDavid extends StatelessWidget {
  const DoctorDavid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 170,
      width: 310,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: MyColors.primaryColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              //Doctor Avatar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/doc david.png'),
                      fit: BoxFit.contain,
                    ),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50,
                  width: 50,
                ),
              ),

              //Doctor name
              const Text(
                'Dr. David Lee \nDermatologist Special',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),

          //schedule calender
          Container(
            height: 50,
            width: 310,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueAccent,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Calender icon
                Icon(
                  Ionicons.calendar,
                  color: Colors.white,
                ),
                SizedBox(width: 18),
                //Appointment date and time
                Text(
                  '21 Apr, 2023 - 1:00 PM',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Doctor Sarah Joy container UI
class DoctorSarah extends StatelessWidget {
  const DoctorSarah({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 170,
      width: 310,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: MyColors.primaryColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              //Doctor Avatar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/doc sarah.png'),
                      fit: BoxFit.contain,
                    ),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50,
                  width: 50,
                ),
              ),

              //Doctor name
              const Text(
                'Dr. Sarah Joy \nCardioliogist Special',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),

          //schedule calender
          Container(
            height: 50,
            width: 310,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueAccent,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Calender icon
                Icon(
                  Ionicons.calendar,
                  color: Colors.white,
                ),
                SizedBox(width: 18),
                //Appointment date and time
                Text(
                  '30 Apr, 2023 - 9:00 PM',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
