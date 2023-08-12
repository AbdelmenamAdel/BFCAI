import 'package:flutter/material.dart';

import '../../../../Core/constants/constants.dart';
import '../../../../Core/widgets/buildCallItem.dart';

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  final List<CallItem> callHistory = [
    CallItem("John Doe", "incoming", "10:15 AM"),
    CallItem("Jane Smith", "outgoing", "Yesterday"),
    CallItem("Mike Johnson", "missed", "2 days ago"),
    CallItem("John Doe", "incoming", "10:15 AM"),
    CallItem("Jane Smith", "outgoing", "Yesterday"),
    CallItem("Mike Johnson", "missed", "2 days ago"),
    CallItem("John Doe", "incoming", "10:15 AM"),
    CallItem("Jane Smith", "outgoing", "Yesterday"),
    CallItem("Mike Johnson", "missed", "2 days ago"),
    CallItem("John Doe", "incoming", "10:15 AM"),
    CallItem("Jane Smith", "outgoing", "Yesterday"),
    CallItem("Mike Johnson", "missed", "2 days ago"),

    // Add more call history items here
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: callHistory.length,
        itemBuilder: (context, index) {
          return buildCallItem(callHistory[index]);
        },
      ),
    );
  }
}
