import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/home_screen.dart';
import 'package:couldai_user_app/screens/login_screen.dart';
import 'package:couldai_user_app/screens/emergency_contacts_screen.dart';
import 'package:couldai_user_app/screens/report_incident_screen.dart';

void main() {
  runApp(const CyberbullyingPreventionApp());
}

class CyberbullyingPreventionApp extends StatelessWidget {
  const CyberbullyingPreventionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cyberbullying Prevention',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blueGrey,
        scaffoldBackgroundColor: const Color(0xFF121212),
        colorScheme: const ColorScheme.dark(
          primary: Colors.blueGrey,
          secondary: Colors.tealAccent,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1F1F1F),
          elevation: 0,
        ),
      ),
      initialRoute: '/login',
      routes: {
        '/': (context) => const LoginScreen(),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/emergency_contacts': (context) => const EmergencyContactsScreen(),
        '/report_incident': (context) => const ReportIncidentScreen(),
      },
    );
  }
}
