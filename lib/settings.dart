import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text('Settings'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Notifications'),
            leading: Icon(Icons.notifications),
            onTap: () {
              // Navigate to Notifications settings
            },
          ),
          Divider(),
          ListTile(
            title: Text('Privacy'),
            leading: Icon(Icons.lock),
            onTap: () {
              // Navigate to Privacy settings
            },
          ),
          Divider(),
          ListTile(
            title: Text('Account'),
            leading: Icon(Icons.account_circle),
            onTap: () {
              // Navigate to Account settings
            },
          ),
          Divider(),
          ListTile(
            title: Text('Appearance'),
            leading: Icon(Icons.color_lens),
            onTap: () {
              // Navigate to Appearance settings
            },
          ),
          Divider(),
          ListTile(
            title: Text('About'),
            leading: Icon(Icons.info),
            onTap: () {
              // Navigate to About settings
            },
          ),
        ],
      ),
    );
  }
}
