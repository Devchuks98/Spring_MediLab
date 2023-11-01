import 'package:flutter/material.dart';
import 'package:medical_app/models/colors/MyColors.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: CustomDrawer(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: MyColors.primaryColor,
        elevation: 0,
        title: const Text('Profile'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/notification1.png',
              height: 25,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          //Background color white
          Positioned(
            top: MediaQuery.of(context).size.height / 8,
            bottom: 0,
            width: MediaQuery.of(context).size.width,
            child: Container(
              //color: Colors.yellow,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 100),
                    const Text(
                      'Patient Details',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 5),
                        child: Column(
                          children: [
                            profileCard('Date of Birth', '2002/4/12'),
                            profileCard('Health Condition ', 'Good'),
                            profileCard('Card Number', 'D744S37'),
                            profileCard('Phone Number', '0814112044'),
                            profileCard('Maiden Name', 'Christian'),
                            profileCard('Email', 'chris@gmail.com'),
                            profileCard('Address', 'Nigeria'),
                          ],
                        ),
                      ),
                    ),
                    //const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.logout_outlined,
                          color: MyColors.primaryColor,
                        ),
                        TextButton(
                          onPressed: () async {
                            showDialog(
                                barrierDismissible: true,
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    backgroundColor: Colors.white,
                                    title: const Text("Confirm logout"),
                                    content: const Text(
                                        "Are you sure you want to logout?"),
                                    actions: [
                                      //cancel button
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Colors.white,
                                            border: Border.all(
                                              color: MyColors.primaryColor,
                                              width: 1,
                                            ),
                                          ),
                                          child: const Align(
                                            child: Text(
                                              "Cancel",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: MyColors.primaryColor),
                                            ),
                                          ),
                                        ),
                                      ),

                                      //ok button
                                      GestureDetector(
                                        onTap: () async {
                                          // await ap.userSignOut();
                                          // Navigator.of(context)
                                          //     .pushAndRemoveUntil(
                                          //         MaterialPageRoute(
                                          //             builder: (context) =>
                                          //                 const SignUp()),
                                          //         (route) => false);
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: MyColors.primaryColor,
                                          ),
                                          child: const Align(
                                            child: Text(
                                              "OK",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                });
                          },
                          child: const Text(
                            'Log Out',
                            style: TextStyle(
                              color: MyColors.primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          //Top center color blue
          Positioned(
            top: 0,
            bottom: MediaQuery.of(context).size.height / 1.7,
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: const BoxDecoration(
                color: MyColors.primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
            ),
          ),
          //center white container
          Positioned(
            top: 50,
            left: 15,
            right: 15,
            bottom: MediaQuery.of(context).size.height / 1.85,
            child: const Card(
              elevation: 2,
              // decoration: BoxDecoration(
              //   color: Colors.white,
              //   borderRadius: BorderRadius.circular(20),
              // ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Christian Nnamani',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Divider(
                    thickness: 2,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Text(
                    'I can do all things through Christ who strenthens Me! \nPhil 4:13',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          //circular avatar
          Positioned(
            bottom: MediaQuery.of(context).size.height / 1.47,
            right: MediaQuery.of(context).size.width / 2.5,
            left: MediaQuery.of(context).size.width / 2.5,
            child: const CircleAvatar(
              radius: 42,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/manchi.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}

Widget profileCard(String title, String trailing) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(trailing),
      ],
    ),
  );
}
