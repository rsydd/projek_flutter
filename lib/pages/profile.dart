import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> options = [
      "Edit profile",
      "Settings",
      "Support",
      "About the app",
    ];

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            "My Profile",
            style: GoogleFonts.montserrat(
              fontSize: 25,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 30),
          const CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage("assets/avatar.png"),
          ),
          const SizedBox(height: 30),
          Text(
            "Rendy Pratama",
            style: GoogleFonts.montserrat(
              fontSize: 25,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 30),
          ...options.map(
            (opt) => ListTile(
              title: Text(opt),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Log Out",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
