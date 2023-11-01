import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class GenderFormField extends StatefulWidget {
  const GenderFormField({super.key});

  @override
  _GenderFormFieldState createState() => _GenderFormFieldState();
}

class _GenderFormFieldState extends State<GenderFormField> {
  String _gender = '';

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      decoration: InputDecoration(
        isDense: true,
        labelText: ' Select Gender',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: const Icon(
          Ionicons.transgender,
          size: 15,
        ),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_drop_down_outlined),
        ),
      ),
      validator: (value) {
        if (_gender.isEmpty) {
          return 'Please select a gender';
        }
        return null;
      },
      onChanged: (value) {
        setState(() {
          _gender = value;
        });
      },
      onTap: () {
        showGenderDialog();
      },
      controller: TextEditingController(text: _gender),
    );
  }

  void showGenderDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select Gender'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              RadioListTile(
                title: const Text('Male'),
                value: 'Male',
                groupValue: _gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value!;
                    Navigator.pop(context);
                  });
                },
              ),
              RadioListTile(
                title: const Text('Female'),
                value: 'Female',
                groupValue: _gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value!;
                    Navigator.pop(context);
                  });
                },
              ),
              RadioListTile(
                title: const Text('Other'),
                value: 'Other',
                groupValue: _gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value!;
                    Navigator.pop(context);
                  });
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
