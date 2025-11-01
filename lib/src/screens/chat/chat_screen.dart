import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // print('Card tapped metric #$metricNumber');
        Navigator.pushNamed(context, '/');
      },
      child: Scaffold(
        appBar: AppBar(title: Text('Chat Screen')),
        body: Center(child: Column(children: [Text('Chat body')])),
      ),
    );
  }
}
