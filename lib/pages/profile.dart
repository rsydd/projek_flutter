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
          SizedBox(height: 30),
          Text(
            "My Profile",
            style: GoogleFonts.montserrat(
              fontSize: 25,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 20),
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
              'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSdEG6Edc3U_J3qLZZc6nlFUqvhImGCPthWZvi0w5NDeZc3O9XV',
            ),
          ),
          const SizedBox(height: 30),
          Text(
            "Rendy Pratama",
            style: GoogleFonts.montserrat(
              fontSize: 25,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 60),
          ...options.map(
            (opt) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ListTile(
                title: Text(
                  opt,
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: const Icon(Icons.chevron_right),
              ),
            ),
          ),
          const SizedBox(height: 100), // Add space before Log Out
          LayoutBuilder(
            builder: (context, constraints) {
              double fontSize = 16;
              if (constraints.maxWidth > 600) {
                fontSize = 24;
              } else if (constraints.maxWidth > 400) {
                fontSize = 20;
              }
              return Align(
                alignment: Alignment.center,
                child: Text(
                  "Log Out",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    fontSize: fontSize,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
