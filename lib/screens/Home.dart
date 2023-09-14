import 'package:flutter/material.dart';
import 'package:medical_app/models/colors/MyColors.dart';
import 'package:ionicons/ionicons.dart';
import 'package:medical_app/models/widgets/SearchOption.dart';
import 'package:medical_app/models/widgets/MyDoctors/Doctors.dart';
import 'package:medical_app/models/widgets/Views.dart';
import 'package:medical_app/models/widgets/MyDoctors/SuggestDoctor.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          backgroundColor: Colors.blueAccent,
          items: const [
            //Home icon
            Icon(
              Ionicons.home,
              size: 25,
              color: MyColor.primaryColor,
            ),
            //Calender icon
            Icon(
              Ionicons.calendar,
              size: 25,
              color: MyColor.primaryColor,
            ),
            //add icon
            Icon(
              Ionicons.add_circle,
              size: 25,
              color: MyColor.primaryColor,
            ),
            //chat icon
            Icon(
              Ionicons.chatbubbles,
              size: 25,
              color: MyColor.primaryColor,
            ),
            //person icon
            Icon(
              Ionicons.person,
              size: 25,
              color: MyColor.primaryColor,
            ),
          ],
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        backgroundColor: Colors.grey[100],
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    //User Avatar
                    Container(
                      foregroundDecoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.green,
                            width: 2,
                          ),
                          shape: BoxShape.circle),
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/person.png'),
                          fit: BoxFit.contain,
                        ),
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      height: 50,
                      width: 50,
                    ),
                    const SizedBox(width: 10),

                    //User name
                    const Text(
                      'Hello John!',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),

                    //Notification iconbutton
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_on,
                        color: MyColor.primaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),

                //search field
                SearchField(
                  onSearch: (query) {},
                  searchController: _searchController,
                  doctorsList: const [],
                ),
                const SizedBox(height: 15),

                //your next appointment =>>>>> See all
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Your Next Appointment',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                //Doctor Appointment scroll
                const SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DoctorJane(),
                        SizedBox(width: 10),
                        DoctorDavid(),
                        SizedBox(width: 10),
                        DoctorJohn(),
                        SizedBox(width: 10),
                        DoctorSarah(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                //Prescription View
                const Presciption(),

                const SizedBox(height: 30),
                //suggested doctor
                const Row(
                  children: [
                    Text(
                      'Suggested Doctor',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),
                //suggested doctors card
                const SizedBox(
                  height: 100,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 10),
                      child: Column(
                        children: [
                          DocJane(),
                          SizedBox(height: 10),
                          DocDavid(),
                          SizedBox(height: 10),
                          DocJohn(),
                          SizedBox(height: 10),
                          DocSarah(),
                        ],
                      ),
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
