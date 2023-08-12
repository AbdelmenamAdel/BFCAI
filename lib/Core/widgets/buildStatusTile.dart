import 'package:flutter/material.dart';

Widget buildStatusTile(String status) {
  return ListTile(
    leading: const CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage('assets/images/BEBO.jpg'),
    ),
    title: Text(
      status,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    subtitle: const Text("3 minutes ago"),
    onTap: () {},
  );
}
