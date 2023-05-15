import 'package:flutter/material.dart';
import 'package:medical_app/models/widgets/hospital/suggested_hospital.dart';

class HospitalTabControl extends StatefulWidget {
  const HospitalTabControl({super.key});

  @override
  State<HospitalTabControl> createState() => _HospitalTabControlState();
}

class _HospitalTabControlState extends State<HospitalTabControl> {
  int _currentIndex = 0;
  final List<String> _tabs = ['All', 'Most Viewed', 'Top Rated'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (int i = 0; i < _tabs.length; i++) _buildTabItem(i, _tabs[i]),
          ],
        ),
        const SizedBox(height: 16),
        _buildTabContent(_currentIndex),
      ],
    );
  }

  Widget _buildTabItem(int index, String title) {
    final isSelected = index == _currentIndex;
    return InkWell(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.white70,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            fontSize: isSelected ? 16 : 16,
          ),
        ),
      ),
    );
  }

  Widget _buildTabContent(int index) {
    switch (index) {
      case 0:
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 10),
            child: Column(
              children: const [
                American(),
                SizedBox(height: 10),
                ApolloReach(),
                SizedBox(height: 10),
                Charite(),
                SizedBox(height: 10),
                DellAngello(),
                SizedBox(height: 10),
                FMC(),
                SizedBox(height: 10),
                LondonBridge(),
                SizedBox(height: 10),
                NewYork(),
                SizedBox(height: 10),
                SaintGeorge(),
              ],
            ),
          ),
        );
      case 1:
        return const Text('Tab 2 content');
      case 2:
        return const Text('Tab 3 content');
      default:
        return Container();
    }
  }
}
