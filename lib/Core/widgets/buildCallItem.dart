import 'package:flutter/material.dart';

import '../constants/constants.dart';


Widget buildCallItem(CallItem call) {
  IconData icon;
  Color iconColor;

  switch (call.type) {
    case "incoming":
      icon = Icons.call_received;
      iconColor = Colors.green;
      break;
    case "outgoing":
      icon = Icons.call_made;
      iconColor = Colors.blue;
      break;
    case "missed":
      icon = Icons.call_missed;
      iconColor = Colors.red;
      break;
    default:
      icon = Icons.call;
      iconColor = Colors.grey;
  }
  return ListTile(
    leading: const CircleAvatar(
      radius: 30,
      // Add user's profile picture here
      // You can use NetworkImage or AssetImage based on your requirement
      backgroundImage: AssetImage('assets/images/BEBO.jpg'),
    ),
    trailing: const Icon(Icons.phone),
    title: Text(
      call.name,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    subtitle: Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: 18,
        ),
        const SizedBox(width: 5),
        Text(call.time),
      ],
    ),
    onTap: () {
      // Add onTap functionality here, e.g., make a call
    },
  );
}
