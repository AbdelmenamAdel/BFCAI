import 'package:flutter/material.dart';

import '../../../../Core/widgets/ChatTail.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            itemBuilder: (context, index) => ChatTail(),
            separatorBuilder: (context, index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5.0, horizontal: 30),
                  child: Container(
                    height: 1,
                    color: const Color.fromARGB(255, 202, 197, 197),
                  ),
                ),
            itemCount: 20));
  }
}
