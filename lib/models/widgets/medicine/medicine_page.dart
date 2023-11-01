import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:medical_app/models/colors/MyColors.dart';
import 'package:medical_app/models/widgets/medicine/tab_control.dart';

class MedicinePage extends StatefulWidget {
  const MedicinePage({super.key});

  @override
  State<MedicinePage> createState() => _MedicinePageState();
}

class _MedicinePageState extends State<MedicinePage> {
  int _page = 0;

  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomNavigationBar: CurvedNavigationBar(
            key: _bottomNavigationKey,
            backgroundColor: Colors.blueAccent,
            items: const [
              //Home icon
              Icon(
                Ionicons.home,
                size: 25,
                color: MyColors.primaryColor,
              ),
              //Calender icon
              Icon(
                Ionicons.calendar,
                size: 25,
                color: MyColors.primaryColor,
              ),
              //add icon
              Icon(
                Ionicons.add_circle,
                size: 25,
                color: MyColors.primaryColor,
              ),
              //chat icon
              Icon(
                Ionicons.chatbubbles,
                size: 25,
                color: MyColors.primaryColor,
              ),
              //person icon
              Icon(
                Ionicons.person,
                size: 25,
                color: MyColors.primaryColor,
              ),
            ],
            onTap: (index) {
              setState(() {
                _page = index;
              });
            },
          ),
          backgroundColor: Colors.grey[100],

          //app bar and tabBar customization
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
                          'Medicine',
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
                  const TabBarWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
