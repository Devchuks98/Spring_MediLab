import 'package:flutter/material.dart';
import 'package:medical_app/models/colors/MyColors.dart';

class TimeSelectWidget extends StatefulWidget {
  final ValueChanged<String> onTimeSelected;

  const TimeSelectWidget({Key? key, required this.onTimeSelected})
      : super(key: key);

  @override
  _TimeSelectWidgetState createState() => _TimeSelectWidgetState();
}

class _TimeSelectWidgetState extends State<TimeSelectWidget> {
  final List<String> _times = [
    '06:00 AM',
    '07:00 AM',
    '08:00 AM',
    '09:00 AM',
    '10:00 AM',
    '11:00 AM',
    '12:00 PM',
    '01:00 PM',
    '02:00 PM',
  ];

  String _selectedTime = '';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // Add a fixed height here
      child: SingleChildScrollView(
        child: Column(
          children: [
            Wrap(
              spacing: 20,
              runSpacing: 25,
              children: List.generate(
                _times.length,
                (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedTime = _times[index];
                    });
                    widget.onTimeSelected(_times[index]);
                  },
                  child: Container(
                    height: 40,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: _selectedTime == _times[index]
                          ? MyColors.primaryColor
                          : Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      _times[index],
                      style: TextStyle(
                        color: _selectedTime == _times[index]
                            ? Colors.white
                            : Colors.grey[800],
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
