import 'package:flutter/material.dart';

class CustomSearchTextfield extends StatelessWidget {
  const CustomSearchTextfield(
      {super.key, this.onChanged, required this.controller});
  final void Function(String)? onChanged;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
          controller: controller,
          onChanged: onChanged,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            labelStyle: TextStyle(color: Colors.white),
            fillColor: Color(0xffB1AFE9),
            filled: true,
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            hintText: 'Search',
            hintStyle: const TextStyle(color: Colors.white),
            focusColor: Color(0xffB1AFE9),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(
                color: Color(0xffB1AFE9),
              ),
            ),
          )),
    );
  }
}
