import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:medical_app/models/colors/MyColors.dart';
import 'package:medical_app/models/widgets/appointment.dart';
import 'package:medical_app/models/widgets/hospital/hospital_page.dart';
import 'package:medical_app/models/widgets/medicine/medicine_page.dart';

class Presciption extends StatelessWidget {
  const Presciption({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Medicine
          Column(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[50],
                ),
                child: IconButton(
                  color: MyColor.primaryColor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MedicinePage(),
                        ));
                  },
                  icon: const Icon(Icons.medication),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Medicine',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              )
            ],
          ),

          //Hospital
          Column(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[50],
                ),
                child: IconButton(
                  color: MyColor.primaryColor,
                  icon: const Icon(Icons.local_hospital_rounded),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HospitalPage(),
                        ));
                  },
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Hospital',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              )
            ],
          ),

          //Appointment
          Column(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[50],
                ),
                child: IconButton(
                  color: MyColor.primaryColor,
                  icon: const Icon(Ionicons.calendar),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Appointmentpage(),
                        ));
                  },
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Appointment',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
