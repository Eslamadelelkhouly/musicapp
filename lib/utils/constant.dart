import 'package:flutter/material.dart';

List<BottomNavigationBarItem> bottombar = [
  const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
  const BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
  const BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
];

List<Widget> screens = [
  Scaffold(
    body: Center(
      child: Text("Home"),
    ),
  ),
  Scaffold(
    body: Center(
      child: Text("Search"),
    ),
  ),
  Scaffold(
    body: Center(
      child: Text("Profile"),
    ),
  ),
];
