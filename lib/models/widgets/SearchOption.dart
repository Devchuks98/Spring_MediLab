import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final TextEditingController searchController;
  final Function(String) onSearch;
  final List<String> doctorsList; // List of doctors

  const SearchField(
      {super.key,
      required this.searchController,
      required this.onSearch,
      required this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextField(
        controller: searchController,
        onChanged: onSearch,
        decoration: InputDecoration(
          labelText: 'Search for doctors',
          suffixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
