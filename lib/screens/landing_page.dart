import 'package:flutter/material.dart';
import 'package:medical_app/model/chat_screen.dart';
import 'package:medical_app/models/colors/MyColors.dart';
import 'package:medical_app/screens/shedule_tab.dart';
import 'package:medical_app/screens/home.dart';
import 'package:medical_app/screens/profile.dart';

//landing page

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    Home(
      onPressedScheduleCard: () {},
    ),
    const ScheduleTab(),
    const ChatScreen(
      initialMessages: [],
    ),
    const Profile(),
  ];

  List<BottomNavigationBarItem> _navItems() {
    const labels = ['Home', 'Calendar', 'Chat', 'Profile'];
    const icons = [
      'assets/homee.png',
      'assets/calendar.png',
      'assets/wechat.png',
      'assets/personn.png',
    ];

    return List.generate(
      labels.length,
      (index) => BottomNavigationBarItem(
        tooltip: labels.elementAt(index),
        icon: Image.asset(
          icons[index],
          height: 24,
          color: _selectedIndex == index ? MyColors.primaryColor : Colors.grey,
        ),
        label: labels[index],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          selectedItemColor: MyColors.primaryColor,
          selectedIconTheme: const IconThemeData(
            color: Colors.white,
            size: 25,
          ),
          unselectedItemColor: Colors.grey,
          selectedFontSize: 15,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: _navItems(),
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
