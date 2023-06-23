import 'package:flutter/material.dart';
import 'package:medical_app/models/widgets/medicine/suggest_drugs.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  _TabBarWidgetState createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  int _currentIndex = 0;
  final List<String> _tabs = ['All', 'Antidepressants', 'Diuretics'];

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
        return const SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.only(top: 5, bottom: 10),
            child: Column(
              children: [
                Valdoxan(),
                SizedBox(height: 10),
                Antibiotic(),
                SizedBox(height: 10),
                Gastro(),
                SizedBox(height: 10),
                NapaExtra(),
                SizedBox(height: 10),
                Paracetamol(),
                SizedBox(height: 10),
                Skincote(),
                SizedBox(height: 10),
                Sudrex(),
                SizedBox(height: 10),
                VitaminC(),
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
