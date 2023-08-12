import 'package:flutter/material.dart';

const Color kPrimaryColor = Color.fromARGB(255, 18, 192, 108);

class CallItem {
  final String name;
  final String type;
  final String time;

  CallItem(this.name, this.type, this.time);
}

class OnboardingScreen {
  final String imagePath;
  final String title;
  final String description;

  OnboardingScreen({
    required this.imagePath,
    required this.title,
    required this.description,
  });
}
