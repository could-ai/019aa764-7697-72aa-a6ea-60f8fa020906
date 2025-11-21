import 'package:flutter/material.dart';

class EmergencyContactsScreen extends StatelessWidget {
  const EmergencyContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emergency Contacts'),
      ),
      body: ListView(
        children: const <Widget>[
          ListTile(
            leading: Icon(Icons.local_police),
            title: Text('National Cyber Crime Reporting Portal'),
            subtitle: Text('1930'),
          ),
          ListTile(
            leading: Icon(Icons.security),
            title: Text('Cyber Crime Helpline (Police)'),
            subtitle: Text('100'),
          ),
          ListTile(
            leading: Icon(Icons.woman),
            title: Text('Women Helpline'),
            subtitle: Text('1091'),
          ),
           ListTile(
            leading: Icon(Icons.child_care),
            title: Text('Child Helpline'),
            subtitle: Text('1098'),
          ),
        ],
      ),
    );
  }
}
