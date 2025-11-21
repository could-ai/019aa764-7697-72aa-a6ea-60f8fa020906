import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: <Widget>[
            _buildDashboardCard(
              context,
              icon: Icons.report,
              label: 'Report Incident',
              onTap: () => Navigator.pushNamed(context, '/report_incident'),
            ),
            _buildDashboardCard(
              context,
              icon: Icons.contact_phone,
              label: 'Emergency Contacts',
              onTap: () => Navigator.pushNamed(context, '/emergency_contacts'),
            ),
            _buildDashboardCard(
              context,
              icon: Icons.folder_special,
              label: 'Evidence Locker',
              onTap: () {
                // Placeholder for Evidence Locker feature
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Evidence Locker coming soon!')),
                );
              },
            ),
            _buildDashboardCard(
              context,
              icon: Icons.help_outline,
              label: 'Help & Resources',
              onTap: () {
                // Placeholder for Help & Resources
                 ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Help & Resources coming soon!')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboardCard(BuildContext context, {required IconData icon, required String label, required VoidCallback onTap}) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 50, color: Theme.of(context).colorScheme.secondary),
            const SizedBox(height: 10),
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
