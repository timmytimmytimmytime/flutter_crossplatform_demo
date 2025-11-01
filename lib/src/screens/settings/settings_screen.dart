import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(
            leading: Icon(Icons.person_outline),
            title: Text('Account'),
            subtitle: Text('Manage your profile and login'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.notifications_outlined),
            title: Text('Notifications'),
            subtitle: Text('Customize alerts and sound'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('About'),
            subtitle: Text('Version 1.0.0'),
          ),
        ],
      ),
    );
  }
}
